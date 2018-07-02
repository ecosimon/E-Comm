from django.conf.urls import url
from . import views

"""
The url portal of shopping_page, included in the project folder urls.py
"""


urlpatterns = [
    url(r'^$', views.shopping_view, name="shop"),
]