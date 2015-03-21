from django.contrib import admin

from django_markdown.admin import MarkdownModelAdmin

from blog.models import Category, Post, Tag

admin.site.register(Category)
admin.site.register(Post, MarkdownModelAdmin)
admin.site.register(Tag)
