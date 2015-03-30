from django.conf.urls import patterns, url

from blog import views

urlpatterns = patterns('',
                       url(r'^$', views.home),
                       url(r'^(?P<pid>\d+)/(?P<slug>[-\w\d]+)$', views.post),
                       url(r'^category/(?P<slug>[-\w\d]+)$', views.category),
                       url(r'^archives/(?P<year>\d+)$',
                           views.archive),
                       url(r'^archives/(?P<year>\d+)/(?P<month>\d+)$',
                           views.archive)
)
