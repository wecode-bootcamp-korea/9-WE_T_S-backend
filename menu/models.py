from django.db import models

class Menu(models.Model):
    name = models.CharField(max_length=50)

    class Meta:
        dt_table = 'menus'

class Category(models.Model):
    name = models.CharField(max_length=100)

    class Meta:
        db_table = 'categories'

class MenuCategory(models.Model):
    menu     = models.ForeignKey('Menu', on_delete=models.SET_NULL, null=True)
    category = models.ForeignKey('Category', on_delete=models.SET_NULL, null=True)

    class Meta:
        db_table = 'menu_categories'

class TypeName(models.Model):
    name = models.CharField(max_length=50)

    class Meta:
        db_table = 'type_names'

class CategoryType(models.Model):
    category  = models.ForeignKey('MenuCategory', on_delete=models.SET_NULL, null=True)
    type_name = models.ForeignKey('TypeName', on_delete=models.SET_NULL, null=True)

    class Meta:
        db_table = 'category_types'