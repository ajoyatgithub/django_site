from django.conf.urls import patterns, url
from django.views.generic import RedirectView

from blog import views

urlpatterns = patterns(
    '',
    url(r'^$', views.IndexView.as_view(), name="index"),
    url(r'^(?P<pid>\d+)/(?P<slug>[-\w\d]+)$', views.post, name="post"),
    url(r'^category/(?P<slug>[-\w\d]+)/$', views.CategoryView.as_view(),
        name="category"),
    url(r'^archives/(?P<year>\d+)/(?P<month>\d+)/$',
        views.ArchiveView.as_view(), name="archives_month"),
)
