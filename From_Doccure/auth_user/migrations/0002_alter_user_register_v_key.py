# Generated by Django 4.2.7 on 2023-12-11 17:09

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("auth_user", "0001_initial"),
    ]

    operations = [
        migrations.AlterField(
            model_name="user_register",
            name="v_key",
            field=models.CharField(default=0, max_length=500, unique=True),
        ),
    ]
