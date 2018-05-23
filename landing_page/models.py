from django.db import models
from django.conf import settings


class NewsletterSub(models.Model):
    """
    Model for New subscribers, takes in name and email in character fields.
	
    Attributes:
        name - takes in a String value
        email - takes in a String value 
        date_added - is automatically generated when the current object is created
    """
    name = models.CharField(max_length=255, blank=True)
    email = models.CharField(max_length=255, blank=True)
    date_added = models.DateTimeField(auto_now_add=True)
	
    def __str__(self):
        """
        This method returns the current objects email when invoked.
        """
        return self.email
	
class SampleShirt(models.Model):
    """
    Model for sample work one by Mr. Mei, work can be uploaded from the admin page.
	
    Attribues:
        title - takes in a String value
        descriptions - takes in String value defining the Shirt.
        photo_url - takes in a File and uploads to the sampleShirts/ directory, this is pointed using hte MEDIA_URL path defined in settings.
    """
    title = models.CharField(max_length=255)
    descriptions = models.CharField(max_length=255)
    photo_url = models.FileField(upload_to = 'sampleShirts/', blank=True, null=True)

    def __str__(self):
        """
        This method returns the current objects title.
        """
        return self.title