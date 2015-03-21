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
    list_display = ['title', 'created', 'modified', 'status']
    list_filter  = ['category', 'status']
    search_fields = ['title']

class CategoryAdmin(admin.ModelAdmin):
    model = Category
    exclude = ['slug', ]
    list_display = ['name', 'parent']

admin.site.register(Category, CategoryAdmin)
admin.site.register(Post, PostAdmin)
admin.site.register(Tag)
