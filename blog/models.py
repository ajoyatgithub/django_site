from django.db import models

class Tag(models.Model):
    name = models.CharField(max_length=50)

    def __unicode__(self):
        return self.name

class Category(models.Model):
    name = models.CharField(max_length=100, db_index=True)
    slug = models.CharField(max_length=100, db_index=True)
    parent = models.ForeignKey('self', null=True, blank=True)

    def __unicode__(self):
        return self.name

class Post(models.Model):
    STATUS_CHOICES = (
        ('p', 'Published'),
        ('d', 'Draft'),
        ('u', 'Unpublished')
    )
    title = models.CharField(max_length=100)
    slug  = models.CharField(max_length=100)
    body  = models.TextField()
    status  = models.CharField(max_length=2, default='d')
    created = models.DateTimeField(db_index=True)
    modified= models.DateTimeField()
    tags    = models.ManyToManyField(Tag, null=True, blank=True)
    category= models.ForeignKey(Category)

    def __unicode__(self):
        return self.title
