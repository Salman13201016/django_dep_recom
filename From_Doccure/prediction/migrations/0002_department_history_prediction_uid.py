# Generated by Django 4.2 on 2023-12-26 07:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("prediction", "0001_initial"),
    ]

    operations = [
        migrations.AddField(
            model_name="department_history_prediction",
            name="uid",
            field=models.CharField(default=1, max_length=500),
            preserve_default=False,
        ),
    ]