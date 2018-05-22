from django.shortcuts import render
from .models import *

# Create your views here.
def shopping_view(request):
    product = ShopShirts.objects.all()
    context = {'product': product}
    return render(request, 'shop_page.html', context)