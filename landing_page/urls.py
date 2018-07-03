from django.conf.urls import include, url
from django.conf.urls.static import static
from wilsite import settings
from . import views

"""
The url portal for landing_page included as an extension inside the project urls.py
This file is basically an extension of the wilsite/urls.py,
for example: 
	localhost:8000/ <--- Would redirect to the index or landing_page of the website.
	localhost:8000/about-me <--- Would redirect you to the about-me page for Mr. Mei's input.
"""


urlpatterns = [
    url(r'^/$', views.index_view, name='index'),
    url(r'^about-me/$', views.about_me_view, name='about-me')
]