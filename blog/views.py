from django.shortcuts import render, redirect

from blog.models import Category, Post, Tag

def home(request):
    posts = Post.objects.filter(status='p').order_by('-created')[0:10]
    categories = Category.tree()
    return render(request, 'home.tpl', {
        'posts': posts,
        'categories': categories
    })

def category(request, slug):
    category = Category.objects.get(slug=slug)
    posts = category.post_set.filter(status='p').order_by('-created')
    categories = Category.tree()
    return render(request, 'home.tpl', {
        'posts': posts,
        'categories': categories
    })

def archive(request, year, month=None, day=None):
    posts = Post.objects.filter(status='p')
    if year:
        posts = posts.filter(created__year=year)
    if month:
        posts = posts.filter(created__month=month)
    if day:
        posts = posts.filter(created__day=day)
    categories = Category.tree()
    return render(request, 'home.tpl', {
        'posts': posts,
        'categories': categories
    })

def post(request, pid, slug):
    post = Post.objects.get(id=pid)
    categories = Category.tree()
    return render(request, 'home.tpl', {
        'post': post,
        'categories': categories
    })
