from django import forms
from .models import *

class ShirtItem(forms.Form):
    name = forms.CharField(max_length=255)
    price = forms.DecimalField(max_digits=4, decimal_places=2)
    amount = forms.IntegerField(
            label='Amount: ',
            widget=forms.Select(choices=AMOUNT)
        )
    sizes = forms.CharField(
            label='Size: ', 
            widget=forms.Select(choices=SHIRT_SIZES)
        )
	
    def clean_shirt_sizes(self):
        cd_size = self.cleaned_data.get('sizes')
		
        if not cd_size:
            raise ValidationError("Size is required.")
        return cd_size
		
    def clean_amount(self):
        cd_amount = self.cleaned_data.get('amount')

        if not cd_amount:
            raise ValidationError("Amount is required.")
        return cd_amount
		
    def clean_name(self):
        cd_name = self.cleaned_data.get('name')
		
    def clean_price(self):
        cd_price = self.cleaned_data.get('price')