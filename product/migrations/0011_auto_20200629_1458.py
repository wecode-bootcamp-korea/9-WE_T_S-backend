# Generated by Django 3.0.7 on 2020-06-29 14:58

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0010_auto_20200629_0420'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='productimage',
            name='product',
        ),
        migrations.AddField(
            model_name='productimage',
            name='product_color',
            field=models.ForeignKey(default='', on_delete=django.db.models.deletion.CASCADE, to='product.ProductColor'),
        ),
    ]