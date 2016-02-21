from datetime import datetime

from django.http import Http404
from django.shortcuts import get_object_or_404, render, redirect

from blog.models import Category, Post, Tag

def home(request):
    posts = Post.objects.filter(status='p')[0:30]
    data = {}
    data['posts'] = posts
    return render(request, 'home.tpl', data)

def category(request, slug):
    category = get_object_or_404(Category, slug=slug)
    posts = category.post_set.filter(status='p')
    data = {
        'categories': Category.tree(),
        'posts': posts,
        'category': category
    }
    data['posts'] = posts
    return render(request, 'category.tpl', data)

def archive(request, year, month=None):
    posts = Post.objects.filter(status='p')
    data = {
        'archives': Post.archive_tree()
    }
    if year:
        try:
            data['date'] = datetime.strptime("%s" % year, "%Y").strftime("%Y")
        except ValueError:
            raise Http404('Invalid year')
        posts = posts.filter(created__year=year)
    if month:
        date_str = "%s,%s" % (month, year)
        try:
            data['date'] = datetime.strptime(date_str, "%m,%Y").strftime("%B %Y")
        except ValueError:
            raise Http404('Invalid year or month')
        posts = posts.filter(created__month=month)
    data['posts'] = posts
    return render(request, 'archive.tpl', data)

def post(request, pid, slug):
    if request.user.is_staff:
        post = get_object_or_404(Post, id=pid)
    else:
        post = get_object_or_404(Post, id=pid, status='p')
    if post.slug!=slug:
        return redirect('blog:post', pid=pid, slug=post.slug,
                        permanent=True)
    data = {}
    data['post'] = post
    related = post.related()
    data['posts'] = related
    return render(request, 'post.tpl', data)
