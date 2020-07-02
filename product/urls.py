from django.urls import path

from .views import (
    ListView,
    DetailView
)

urlpatterns = [
    path('product/list', ListView.as_view()),
    path('product/<slug:req_product_id>/color/<slug:req_color_id>', DetailView.as_view()),
]


