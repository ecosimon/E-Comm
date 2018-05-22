from django.db import models

class ShopShirts(models.Model):
    title = models.CharField(max_length=255)
    descriptions = models.CharField(max_length=255)
    photo_url = models.FileField(upload_to='shopShirts/', blank=True, null=True)
    price = models.DecimalField(max_digits=4, decimal_places=2, blank=True)
    available = models.BooleanField(default=False)
    stock = models.PositiveIntegerField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
	
    def __str__(self):
        return self.title
		
		
class ShoppingCart(models.Model):
    items = models.ForeignKey(ShopShirts, on_delete=models.CASCADE)
    number_of_items = models.PositiveIntegerField(blank=True, null=True)
    name_of_items = models.CharField(max_length=255)
	
    def __str__(self):
        return self.number_of_items