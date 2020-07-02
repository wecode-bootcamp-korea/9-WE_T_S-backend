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
            category_list = []
            menus = Menu.objects.prefetch_related('menucategory_set')
            for menu in menus:
                categories = menu.menucategory_set.all()
                for category in categories:
                    category_id   = category.category_id
                    category_name = Category.objects.get(id = category_id).name
                    category_list.append({
                        'category_id' : category_id,
                        'category_name' : category_name
                    })
            return JsonResponse({'category_list' : category_list}, status=200)

        except Category.DoesNotExist:
            return HttpResponse(status=401)