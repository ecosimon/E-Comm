import urllib.request
from django.shortcuts import render
from cart.cart import Cart
from cart.views import *
from .choices import *
from .models import Product
from cart.forms import *

# Create your views here.
def shopping_view(request):
    """
    For the mean time, this function displays all the listed shirts available in the shop.
    """
	
    product = Product.objects.all()
    cart_form = CartAddProductForm()
    cart = Cart(request)
    context = {'product': product, 'cart_form': cart_form, 'cart': cart}
    return render(request, 'shop_page.html', context)
