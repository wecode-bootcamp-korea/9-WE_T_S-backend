from django.db import models

from account.models import Guest, Account
from product.models import Product

class OrderStatus(models.Model):
    status = models.IntegerField()

    class Meta:
        db_table = 'order_status'

class Order(models.Model):
    cart_bag     = models.IntegerField()
    address      = models.CharField(max_length=400)
    created_at   = models.DateTimeField(auto_now_add=True)
    guest        = models.ForeignKey('Guest',on_delete=models.CASCADE)
    account      = models.ForeignKey('Account', on_delete=models.CASCADE)
    order_status = models.ForeignKey('OrderStatus', on_delete=models.CASCADE)

    class Meta:
        db_table = 'orders'

class OrderProduct(models.Model):
    order    = models.ForeignKey('Order', on_delete=models.SET_NULL, null=True)
    product  = models.ForeignKey('Product', on_delete=models.SET_NULL, null=True)
    quantity = models.IntegerField()

    class Meta:
        db_table = 'order_products'

class CartWishlist(models.Model):
    product = models.ForeignKey('Product', on_delete=models.SET_NULL, null=True)
    account = models.ForeignKey('Account', on_delete=models.SET_NULL, null=True)

    class Meta:
        db_table = 'cart_wishlists'

