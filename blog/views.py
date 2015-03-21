from django.shortcuts import render, redirect

from blog.models import Category, Post, Tag

def home(request):
    return render(request, 'home.tpl')
