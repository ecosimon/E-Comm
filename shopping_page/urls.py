from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.shopping_view, name="shop")
]