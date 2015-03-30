from datetime import datetime

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
    data['category'] = category
    return render(request, 'category.tpl', data)

def archive(request, year, month=None):
    posts = Post.objects.filter(status='p')
    data = common()
    if year:
        data['date'] = datetime.strptime("%s" % year, "%Y").strftime("%Y")
        posts = posts.filter(created__year=year)
    if month:
        date_str = "%s,%s" % (month, year)
        data['date'] = datetime.strptime(date_str, "%m,%Y").strftime("%B %Y")
        posts = posts.filter(created__month=month)
    data['posts'] = posts
    return render(request, 'archive.tpl', data)

def post(request, pid, slug):
    post = Post.objects.get(id=pid)
    data = common()
    data['post'] = post
    related = post.related()
    data['posts'] = related
    return render(request, 'post.tpl', data)
