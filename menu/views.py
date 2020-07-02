import json

from django.views import View
from django.http import (
    JsonResponse,
    HttpResponse
)

from .models import (
    Menu,
    Category
)

class CategoryView(View):
    def get(self, request):
        try:
            menus = Menu.objects.prefetch_related('menucategory_set__category')
            category_list = [{
                'category_id' : category.category_id,
                'category_name' : category.category.name
            } for menu in menus for category in menu.menucategory_set.all()]
            return JsonResponse({'category_list' : category_list}, status=200)

        except Category.DoesNotExist:
            return HttpResponse(status=401)