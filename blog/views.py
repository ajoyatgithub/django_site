from django.shortcuts import render, redirect

from blog.models import Category, Post, Tag

def home(request):
    posts = Post.objects.all()
    return render(request, 'home.tpl', {'posts': posts})
