# Generated by Django 4.2.7 on 2023-11-08 06:44

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('dashboard_from', '0010_rename_nam_sub_disease_name'),
    ]

    operations = [
        migrations.CreateModel(
            name='Symptom',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('Symptom1', models.CharField(blank=True, max_length=500, null=True, unique=True)),
                ('Symptom2', models.CharField(blank=True, max_length=500, null=True, unique=True)),
                ('Symptom3', models.CharField(blank=True, max_length=500, null=True, unique=True)),
                ('Symptom4', models.CharField(blank=True, max_length=500, null=True, unique=True)),
                ('Symptom5', models.CharField(blank=True, max_length=500, null=True, unique=True)),
                ('Symptom6', models.CharField(blank=True, max_length=500, null=True, unique=True)),
                ('Symptom7', models.CharField(blank=True, max_length=500, null=True, unique=True)),
                ('Symptom8', models.CharField(blank=True, max_length=500, null=True, unique=True)),
                ('Symptom9', models.CharField(blank=True, max_length=500, null=True, unique=True)),
                ('depart_id', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='dashboard_from.doctor_depert_name')),
                ('disease_id', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='dashboard_from.sub_disease')),
            ],
        ),
    ]