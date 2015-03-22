from django.shortcuts import render, redirect

from blog.models import Category, Post, Tag

def home(request):
    posts = Post.objects.filter(status='p').order_by('-created')[0:10]
    categories = Category.tree()
    return render(request, 'home.tpl', {
        'posts': posts,
        'categories': categories
    })
