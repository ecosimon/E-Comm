from django.db import models

from .choices import *


class Product(models.Model):
    """

    """
    title = models.CharField(max_length=255)
    photo_url = models.FileField(upload_to='shopShirts/', blank=True, null=True)
    price = models.DecimalField(max_digits=5, decimal_places=2, blank=True)
    quantity = models.PositiveSmallIntegerField(default=0)
    available = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)
	
    def __str__(self):
        """
        Return the string value of the item.
        """	
        return self.title