from django.urls import path

from .views import (
    ListView,
    DetailView
)

urlpatterns = [
    path('/list', ListView.as_view()),
    path('/<int:product_id>', DetailView.as_view()),
]
