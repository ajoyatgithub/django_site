from datetime import datetime

from django.http import Http404
from django.shortcuts import get_object_or_404, render, redirect
from django.views.generic import View

from blog.models import Category, Post


class IndexView(View):
    def get(self, request):
        posts = Post.objects.filter(status='p')
        return render(request, 'home.tpl', dict(posts=posts))


class CategoryView(View):
    def get(self, request, slug):
        category = get_object_or_404(Category, slug=slug)
        posts = category.post_set.filter(status='p')
        return render(request, 'category.tpl', dict(
            categories=Category.tree(), posts=posts, category=category
        ))


class ArchiveView(View):
    def get(self, request, year, month=None):
        posts = Post.objects.filter(status='p')
        data = dict(archives=Post.archive_tree())
        if year:
            try:
                data['date'] = datetime.strptime(
                    "%s" % year, "%Y").strftime("%Y")
            except ValueError:
                raise Http404('Invalid year')
            posts = posts.filter(created__year=year)
        if month:
            date_str = "%s,%s" % (month, year)
            try:
                data['date'] = datetime.strptime(
                    date_str, "%m,%Y").strftime("%B %Y")
            except ValueError:
                raise Http404('Invalid year or month')
            posts = posts.filter(created__month=month)
        data['posts'] = posts
        return render(request, 'archive.tpl', data)


class PostView(View):
    def get(self, request, year, month, day, slug):
        if request.user.is_staff:
            post = get_object_or_404(Post, slug__icontains=slug,
                                     created__year=year, created__month=month,
                                     created__day=day)
        else:
            post = get_object_or_404(Post, slug__icontains=slug,
                                     created__year=year, created__month=month,
                                     created__day=day, status='p')
        if post.slug != slug:
            return redirect('blog:post', year=year, month=month, day=day,
                            slug=post.slug, permanent=True)
        related = post.related()
        return render(request, 'post.tpl', dict(post=post, posts=related))
