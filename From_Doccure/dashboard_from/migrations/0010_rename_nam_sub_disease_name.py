# Generated by Django 4.2.7 on 2023-11-07 13:31

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('dashboard_from', '0009_rename_name_sub_disease_nam'),
    ]

    operations = [
        migrations.RenameField(
            model_name='sub_disease',
            old_name='nam',
            new_name='name',
        ),
    ]
