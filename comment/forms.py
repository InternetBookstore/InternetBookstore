from django import forms
from django.contrib.auth.models import User
from .models import Comment


class CommentCreateForm(forms.ModelForm):

    class Meta:
        model = Comment
        fields = ('content',)
        exclude = ('user', 'book')
