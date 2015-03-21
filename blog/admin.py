from django.contrib import admin

from blog.models import Category, Post, Tag

class PostAdmin(admin.ModelAdmin):
    model = Post
    readonly_fields = ['preview', ]
    fieldsets = (
        (None, {
            'fields': (('title', 'status'),
                       ('body', ),
                       ( 'preview', ),
                       ('category', 'tags'))
        }),
    )
    list_display = ['slug', 'created', 'modified']

class CategoryAdmin(admin.ModelAdmin):
    model = Category
    exclude = ['slug', ]

admin.site.register(Category, CategoryAdmin)
admin.site.register(Post, PostAdmin)
admin.site.register(Tag)
