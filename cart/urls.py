from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.cart_items, name='cart_items'),
    url(r'^/add/(?P<product_id>\d+)/$', views.cart_add, name='add'),
    url(r'^/remove/(?P<product_id>\d+)/$', views.cart_remove, name='remove'),
]