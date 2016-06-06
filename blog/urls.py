from django.conf.urls import url

from blog import views


urlpatterns = [
    url(r'^$', views.IndexView.as_view(), name="index"),
    url(r'^(?P<year>\d+)/(?P<month>\d+)/(?P<day>\d+)/(?P<slug>[-\w\d]+)$',
        views.PostView.as_view(), name="post"),
    url(r'^category/(?P<slug>[-\w\d]+)/$', views.CategoryView.as_view(),
        name="category"),
    url(r'^(?P<year>\d+)/(?P<month>\d+)/$',
        views.ArchiveView.as_view(), name="archives_month"),
]
