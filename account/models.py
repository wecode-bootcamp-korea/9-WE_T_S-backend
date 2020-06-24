from django.db import models

# Create your models here.

class Account(models.Model):
	first_name = models.CharField(max_length=30)
	last_name = models.CharField(max_length=40)
	email = models.EmailField(max_length=100)
	password = models.CharField(max_length=100)
	# account_type = models.BooleanField(default=True)
	created_at = models.DateTimeField(auto_now_add=True)

	class Meta:
		db_table = 'accounts'

class Guest(models.Model):
	email = models.EmailField(max_length=100)
	created_at = models.DateTimeField(auto_now_add=True)

	class Meta:
		db_table = 'guests'
