from django.conf.urls import patterns, include, url
from django.contrib import admin

urlpatterns = patterns('',
                       url(r'^admin/', include(admin.site.urls)),
                       url('^markdown/', include('django_markdown.urls')),
                       url('^blog/', include('blog.urls'))
                   )
