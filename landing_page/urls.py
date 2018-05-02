from django.conf.urls import include, url
from django.conf.urls.static import static
from wilsite import settings
from . import views

urlpatterns = [
    url(r'^$', views.index_view, name='index'),
    url(r'^about-me/$', views.about_me_view, name='about-me')
]