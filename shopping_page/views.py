from django.shortcuts import render
from .models import *

# Create your views here.
def shopping_view(request):
    """
    For the mean time, this function displays all the listed shirts available in the shop.
    """
    product = ShopShirts.objects.all()
    context = {'product': product}
    return render(request, 'shop_page.html', context)