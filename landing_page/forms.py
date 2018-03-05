from django import forms
from .models import *

class NewsLetterSignUp(forms.Form):
    email = forms.CharField(max_length=255)
	
    def clean_email(self):
        cd_email = self.cleaned_data.get('email')
		
        if not cd_email:
            raise forms.ValidationError('Email is required for submission!')
        if (Newsletter.objects.filter(email=cd_email).count() > 0):
            raise forms.ValidationError('This email already exists!')
        return cd_email