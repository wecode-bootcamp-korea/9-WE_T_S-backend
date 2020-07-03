import json
import bcrypt
import jwt

from django.db.models import F
from django.views     import View
from django.http      import (
    HttpResponse,
    JsonResponse
)

from .models import (
    CartWishlist,
    OrderProduct
)
from account.models import Account
from product.models import (
    ProductImage,
    Product
)
from account.utils  import login_required

class LikeProductView(View):
    @login_required
    def get(self, request):

        account_wish_product = CartWishlist.objects.filter(account__id = request.user.id)
        wishlists = account_wish_product.select_related(
            'product', 
            'product__product',
            'product__color',
            'product__product__product_size'
            ).prefetch_related('product__productimage_set')
            
        wishlist_detail = [{
            "product_id"        : wishlist.product.product.id,
            "image"             : wishlist.product.productimage_set.first().image_url,
            "name"              : wishlist.product.product.name,
            "price"             : wishlist.product.product.price,
            "color"             : wishlist.product.color.name,
            "size"              : [size.strip() for size in wishlist.product.product.product_size.size.split(',')]
        } for wishlist in wishlists]
        return JsonResponse({'wish_list':wishlist_detail}, status=200)
    
    @login_required
    def post(self,request):
        data = json.loads(request.body)
        print("start")
        try:
            CartWishlist.objects.create(
                account_id = request.user.id,
                product_id = data['product_id']
            )
            return HttpResponse(status=200)

        except KeyError:
            return JsonResponse({'message' : 'INVALID_KEY'}, status=400)
      
# 상품 지우기 앤드포인트

    @login_required
    def delete(self,request):
        data = json.loads(request.body)
        try:
            CartWishlist.objects.get(account_id = request.user.id, product_id = data['product_id']).delete()
            return HttpResponse(status=200)

        except KeyError:
            return JsonResponse({'message' : 'INVALID_KEY'}, status=400)

# class CartProductView(View):
#     @login_required
#     def get(self, request):
#         cart_product = OrderProduct.objects.prefetch_related('order').filter(account = request.user.id)
#         # orderproduct에서 order로 들어가서 account참조해와서 
#         product_list = .objects.prefetch_related('product_color')
#         # .prefetch_related('product').prefetch_related('quantity')
#         cart_list    = []
#         for cart in product_list:
#             cart_basket = {
#                 "cart_product_id"   : cart.product_color.product.id,
#                 "image"             : cart.product_color.product.image_url,
#                 "name"              : cart.product_color.product.name,
#                 "price"             : cart.product_color.product.price,
#                 "color"             : cart.product_color.color.name,
#                 "size"              : cart.product_color.product.product_size
#                 "quantity"          : 
#             }
#             cart_list.append(cart_basket)

#         # product_quantity = OrderProduct.objects.filter(product = )
#         # for cart in product_quantity:
#         #     "quantity"              : cart.
#         #     cart_list.append(cart_basket)
#         return JsonResponse({'cart_list':cart_list}, status=200)

