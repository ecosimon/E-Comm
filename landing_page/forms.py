from django import forms
from .models import *

class NewsLetterSignUp(forms.Form):
    name = forms.CharField(max_length=255)
    email = forms.CharField(max_length=255)
	
    def clean_email(self):
        cd_email = self.cleaned_data.get('email')
		
        if not cd_email:
            raise forms.ValidationError('Email is required for submission!')
        if (NewsletterSub.objects.filter(email=cd_email).count() > 0):
            raise forms.ValidationError('This email already exists!')
        return cd_email
		
    def clean_name(self):
        cd_name = self.cleaned_data.get('name')
		
        if not cd_name:
            raise forms.ValidationError('Name is required for identification!')
        return cd_name