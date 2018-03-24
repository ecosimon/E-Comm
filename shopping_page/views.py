from django.shortcuts import render

# Create your views here.
def shopping_view(request):
    return render(request, 'shop_page.html', {})