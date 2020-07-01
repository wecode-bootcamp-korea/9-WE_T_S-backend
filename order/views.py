import json
import bcrypt
import jwt

from django.db.models import F
from django.views import View
from django.http import (
    HttpResponse,
    JsonResponse
)

from .models import (
    CartWishlist,
    OrderProduct
)
from account.models import Account
from product.models import Product
# from account.utils import login_required

class LikeProduct(View):
    # @login_required
    def get(self, request):
        wish_product = CartWishlist.objects.filter(account = request.user.id).select_related('product')
        wish_list    = []
        for wish in wish_product:
            wish_basket = {
                "wished_product_id" : wish.product.id,
                "image" : wish.product.image_url,
                "name" : wish.product.name,
                "price" : wish.product.price
            }
            wish_list.append(wish_basket)
        return JsonResponse({'wish_list':wish_list}, status=200)
    
    # @login_required
    def post(self,request):
        data = json.loads(request.body)
        # print(request.body)
        wish_product = CartWishlist.objcets.filter(account = request.user.id)
        try:
            if CartWishlist.objects.filter(product = data['product_id']).exists():
                wish_product = CartWishlist.objects.filter(product = data['product_id']).get(account = request.user.id)
                wish_product.save()

            else:
                CartWishlist.objects.create(
                    account_id = request.user.id,
                    product_id = data['product_id']
                )
                return HttpResponse(status=200)

        except KeyError:
            return JsonResponse({'message' : 'INVALID_KEY'}, status=400)
      

# 상품 지우기 앤드포인트

  # @login_required
    def delete(self,request):
        data = json.loads(request.body)
        get_wished_product_id = data['wished_product_id']
        # get_wish_list_id = data
        wish_product = CartWishlist.objcets.filter(account = request.user.id)
        try:
            if CartWishlist.objects.filter(product = data['product_id']).exists():
                wish_product = CartWishlist.objects.filter(product = data['product_id']).get(account = request.user.id)
                wish_product.save()

            else:
                wish_product.objects.create(
                    account_id = request.user.id,
                    product_id = data['product_id']
                )
                return HttpResponse(status=200)

        except KeyError:
            return JsonResponse({'message' : 'INVALID_KEY'}, status=400)