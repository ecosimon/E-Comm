from django.shortcuts import render, redirect
from django.views.decorators.http import require_POST
from django.conf import settings
from shopping_page.models import Product
from .cart import Cart
from .forms import CartAddProductForm
from shopping_page.views import *


# Create your views here.
@require_POST
def cart_add(request, product_id):
    cart = Cart(request)
    product = Product.objects.get(id=product_id)
    print(product.title)
    form = CartAddProductForm(request.POST)
    if form.is_valid():
        cd = form.cleaned_data
        cart.add(product=product, quantity=cd['quantity'], size=cd['size'],
                  update_quantity=cd['update'])
    return redirect('cart_items')
	
def cart_remove(request, product_id):
    cart = Cart(request)
    product = Product.objects.get(id=product_id)
    cart.remove(product)
    return redirect('cart_items')
	
def cart_items(request):
    print("works")
    cart = Cart(request)
    for item in cart:
        item['update_quantity_form'] = CartAddProductForm(
            initial={'quantity': item['quantity'], 'update': True})
    context = {'cart': cart}
    return render(request, 'cart_items.html', context)