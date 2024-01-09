# Generated by Django 4.2.7 on 2024-01-08 14:39

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):
    initial = True

    dependencies = [
        ("role", "0001_initial"),
        ("auth_user", "0004_alter_user_register_identy_no_and_more"),
    ]

    operations = [
        migrations.CreateModel(
            name="user_role_management",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                (
                    "select_role",
                    models.ForeignKey(
                        blank=True,
                        null=True,
                        on_delete=django.db.models.deletion.CASCADE,
                        to="role.patient_or_admin",
                    ),
                ),
                (
                    "select_user",
                    models.ForeignKey(
                        blank=True,
                        null=True,
                        on_delete=django.db.models.deletion.CASCADE,
                        to="auth_user.user_register",
                    ),
                ),
            ],
        ),
    ]
