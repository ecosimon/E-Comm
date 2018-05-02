from django.db import models
from django.conf import settings


class NewsletterSub(models.Model):
    name = models.CharField(max_length=255, blank=True)
    email = models.CharField(max_length=255, blank=True)
    date_added = models.DateTimeField(auto_now_add=True)
	
    def __str__(self):
        return self.email
	
class SampleShirt(models.Model):
    title = models.CharField(max_length=255)
    descriptions = models.CharField(max_length=255)
    photo_url = models.FileField(upload_to = 'sampleShirts/', blank=True, null=True)

    def __str__(self):
        return self.title