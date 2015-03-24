from django.shortcuts import render, redirect

from blog.models import Category, Post, Tag

def common():
    return {
        'archives': Post.archive_tree(),
        'categories': Category.tree()
    }

def home(request):
    posts = Post.objects.filter(status='p')[0:10]
    archives = Post.archive_tree()
    data = common()
    data['posts'] = posts
    return render(request, 'home.tpl', data)

def category(request, slug):
    category = Category.objects.get(slug=slug)
    posts = category.post_set.filter(status='p')
    data = common()
    data['posts'] = posts
    return render(request, 'home.tpl', data)

def archive(request, year, month=None):
    posts = Post.objects.filter(status='p')
    if year:
        posts = posts.filter(created__year=year)
    if month:
        posts = posts.filter(created__month=month)
    data = common()
    data['posts'] = posts
    return render(request, 'home.tpl', data)

def post(request, pid, slug):
    post = Post.objects.get(id=pid)
    data = common()
    data['post'] = post
    return render(request, 'home.tpl', data)
