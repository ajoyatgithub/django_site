from django.conf.urls import patterns, url
from django.views.generic import RedirectView

from blog import views

urlpatterns = patterns('',
                       url(r'^$', views.home),
                       url(r'^(?P<pid>\d+)/(?P<slug>[-\w\d]+)$', views.post),

                       url(r'^category/(?P<slug>[-\w\d]+)/$', views.category),
                       url(r'^c/(?P<slug>[-\w\d]+)/$',
                           RedirectView.as_view(pattern_name='blog.views.category')),

                       url(r'^archives/(?P<year>\d+)/$',
                           views.archive, name="archives_year"),
                       url(r'^a/(?P<year>\d+)/$',
                           RedirectView.as_view(pattern_name='archives_year')),

                       url(r'^archives/(?P<year>\d+)/(?P<month>\d+)/$',
                           views.archive, name="archives_month"),
                       url(r'^a/(?P<year>\d+)/(?P<month>\d+)/$',
                           RedirectView.as_view(pattern_name='archives_month')),
)
