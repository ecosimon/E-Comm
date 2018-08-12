from django import forms
from shopping_page.models import Product
from shopping_page.choices import *

class CartAddProductForm(forms.Form):
    quantity = forms.IntegerField(
            label='Amount',
            widget=forms.Select(choices=AMOUNT)
        )
    size = forms.CharField(
            label='Size', 
            widget=forms.Select(choices=SHIRT_SIZES)
        )
    update = forms.BooleanField(required=False, initial=False, widget=forms.HiddenInput)
	
    def clean_quantity(self):
        cd_quantity = self.cleaned_data.get('quantity')
		
        if not cd_quantity:
            raise ValidationError('Requires an amount')
        return cd_quantity
		
    def clean_size(self):
        cd_size = self.cleaned_data.get('size')
		
        if not cd_size:
            raise ValidationError('Requires a size')
        return cd_size
		
    # quantity = forms.TypedChoiceField(choices=AMOUNT, coerce=int)
    # size = forms.TypedChoiceField(choices=SHIRT_SIZES, coerce=str())