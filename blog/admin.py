from django.contrib import admin

from blog.models import Category, Post, Tag


class PostAdmin(admin.ModelAdmin):
    model = Post
    readonly_fields = ['modified', 'slug', 'tagged']
    filter_horizontal = ['tags', ]
    fieldsets = (
        (None, {
            'fields': (('title', 'status'),
                       ('body', ),
                       ('category', 'tags'))
        }),
        ('Edit creation date', {
            'classes': ('collapse', ),
            'fields': (('created', 'modified', 'slug'), )
        })
    )
    list_display = ['title', 'created', 'modified', 'status']
    list_editable = ['status', ]
    list_filter = ['category', 'status']
    search_fields = ['title']
    list_per_page = 50
    save_on_top = True


class CategoryAdmin(admin.ModelAdmin):
    model = Category
    exclude = ['slug', ]
    list_display = ['name', 'parent']


admin.site.register(Category, CategoryAdmin)
admin.site.register(Post, PostAdmin)
admin.site.register(Tag)
