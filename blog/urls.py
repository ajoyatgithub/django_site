from django.conf.urls import patterns, url

from blogs import views

urlpatterns = patterns('',
                       url(r'^$', views.home()),
                       url(r'^post/(?P<pid>\d+)/(?P<slug>\s+)$', views.home()),
                       url(r'^category/(?P<slug>\s+)$', views.home()),
                       url(r'^(?P<year>\d+)/(?P<month>\d+)/(?P<y>\day+)$',
                           views.home())
)
