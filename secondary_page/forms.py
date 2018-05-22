from django import forms

class ContactUs(forms.Form):
    email = forms.CharField(max_length=255)
    subject = forms.CharField(max_length=255)
    message = forms.CharField(widget=forms.Textarea)
	
    def clean_email(self):
        cd_email = self.cleaned_data.get('email')
		
        if not cd_email:
            raise forms.ValidationError('Email is required for submission!')
        return cd_email
		
    def clean_subject(self):
        cd_subject = self.cleaned_data.get('subject')
		
        if not cd_subject:
            raise forms.ValidationError('Subject is required!')
        return cd_subject
		
    def clean_message(self):
        cd_message = self.cleaned_data.get('message')
		
        if not cd_message:
            raise forms.ValidationError('Message needed for contact.')
        return cd_message