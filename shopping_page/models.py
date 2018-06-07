from django.db import models
from django_cart.cart.models import Cart, ItemManager, Item
from django_cart.cart.cart import Cart

from .choices import *


class ShopShirts(models.Model):
    """
    This model is for holding all product listed from the company, it includes the name of the object.
    A description of the shirt as String, the photo_url pointed towards the Media folder, price takes on 
    a decimal field, a boolean available if its available then True, false other wise. The Integer value 
    of the current stock.
    """
    title = models.CharField(max_length=255)
    shirt_id = models.AutoField(primary_key=True)
    descriptions = models.CharField(max_length=255)
    photo_url = models.FileField(upload_to='shopShirts/', blank=True, null=True)
    price = models.DecimalField(max_digits=5, decimal_places=2, blank=True)
    size = models.CharField(max_length=10, choices=SHIRT_SIZES, default='SMALL')
    quantity = models.PositiveSmallIntegerField(default=0)
    available = models.BooleanField(default=False)
    shopping_cart = models.ForeignKey('ShoppingCart', on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)
	
    def __str__(self):
        """
        Return the string value of the item.
        """	
        return self.shirt_id
		
		
class ShoppingCart(models.Model):
    """
    Shopping cart is will be implemented as a list to contain the amount of items currently being held.
    Items is a many-to-one relationship with ShopShirts, meaning the shopping cart can have multiple shirts in one cart.
    Number of items to keep track of the amount of shirts being purchased and name of items.
    """
    items = models.ForeignKey(ShopShirts, on_delete=models.CASCADE)
    number_of_items = models.PositiveIntegerField(blank=True, null=True)
    name_of_items = models.CharField(max_length=255)
	
    def __str__(self):
        """
        Returns the amount of items listed.
        """
        return self.number_of_items