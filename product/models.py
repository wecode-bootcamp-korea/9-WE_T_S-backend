from django.db import models
from menu.models import TypeName


class ProductSize(models.Model):
    size = models.CharField(max_length=10)

    class Meta:
        db_table = 'product_sizes'

class CareGuide(models.Model):
    guide = models.CharField(max_length=420)

    class Meta:
        db_table = 'care_guides'

class Product(models.Model):
    name         = models.CharField(max_length=50)
    price        = models.DecimalField(max_digits=20, decimal_places=4)
    created_at   = models.DateTimeField(auto_now_add=True)
    care_guide   = models.ForeignKey('CareGuide', on_delete=models.SET_NULL, null=True)
    product_size = models.ForeignKey('ProductSize', on_delete=models.SET_NULL, null=True)
    type_name    = models.ForeignKey('Typename', on_delete=models.SET_NULL, null=True)

    class Meta:
        db_table = 'products'

class Color(models.Model):
    name = models.CharField(max_length=100)

    class Meta:
        db_table = 'colors'

class ProductColor(models.Model):
    color   = models.ForeignKey('Colors', on_delete=models.SET_NULL, null=True)
    product = models.ForeignKey('Product', on_delete=models.SET_NULL, null=True)

    class Meta:
        db_table = 'product_colors'

class ProductImage(models.Model):
    image         = models.CharField(max_length=400)
    product_color = models.ForeignKey('ProductColor', on_delete=models.SET_NULL, null=True)
    
    class Meta:
        db_table = 'product_images'