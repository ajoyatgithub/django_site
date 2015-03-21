from django.db import models

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
