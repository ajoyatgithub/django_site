import markdown
from datetime import datetime

from django.utils.text import slugify
from django.db import models

class Tag(models.Model):
    name = models.CharField(max_length=50)

    def __unicode__(self):
        return self.name

class Category(models.Model):
    name = models.CharField(max_length=100, db_index=True)
    slug = models.CharField(max_length=100, db_index=True, blank=True)
    parent = models.ForeignKey('self', null=True, blank=True,
                               limit_choices_to={'parent':None})

    def __unicode__(self):
        if self.parent:
            return "%s (%s)" % (self.name, self.parent)
        else:
            return "%s" % self.name

    def save(self, *args, **kwargs):
        self.slug = slugify(self.name)
        super(Category, self).save(*args, **kwargs)

    def children(self):
        return Category.objects.filter(parent=self)

    def descendants(self):
        children = self.children().values('id', 'name', 'slug')
        if children:
            for c in children:
                childs_descendants = Category.objects.get(id=c['id']).descendants()
                if childs_descendants:
                    c['children'] = childs_descendants
                else:
                    c['children'] = None
            return c
        else:
            return None

    @classmethod
    def tree(cls):
        roots = cls.objects.filter(parent=None)
        res = []
        for r in roots:
            res.append({
                'id': r.id,
                'name': r.name,
                'slug': r.slug,
                'children': r.children().values('id', 'name', 'slug')
            })
        return res


    class Meta:
        verbose_name_plural = 'Categories'

class Post(models.Model):
    STATUS_CHOICES = (
        ('p', 'Published'),
        ('d', 'Draft'),
        ('u', 'Unpublished')
    )
    title = models.CharField(max_length=100)
    slug  = models.CharField(max_length=100, blank=True)
    body  = models.TextField()
    status  = models.CharField(max_length=2, choices=STATUS_CHOICES,  default='d')
    created = models.DateTimeField(db_index=True, blank=True)
    modified= models.DateTimeField(blank=True)
    tags    = models.ManyToManyField(Tag, null=True, blank=True)
    category= models.ForeignKey(Category, null=True, blank=True,
                                limit_choices_to={'category__parent':None})

    def save(self, *args, **kwargs):
        self.slug = slugify(self.title)
        if not self.id:
            self.created = datetime.now()
        self.modified = datetime.now()
        super(Post, self).save(*args, **kwargs)


    def __unicode__(self):
        return self.title

    def preview(self):
        return markdown.markdown(self.body)
    preview.allow_tags = True
