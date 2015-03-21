from django.contrib import admin

from blog.models import Category, Post, Tag

class PostAdmin(admin.ModelAdmin):
    model = Post
    exclude = ['slug', 'created', 'modified']
    list_display = ['slug', 'created', 'modified']

class CategoryAdmin(admin.ModelAdmin):
    model = Category
    exclude = ['slug', ]

admin.site.register(Category)
admin.site.register(Post, PostAdmin)
admin.site.register(Tag)
