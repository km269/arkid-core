# Generated by Django 2.0.13 on 2020-04-10 20:36

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('oauth2_provider', '0009_auto_20200407_1109'),
        ('oneid_meta', '0070_auto_20200402_1602'),
    ]

    operations = [
        migrations.CreateModel(
            name='OIDCAPP',
            fields=[
            ],
            options={
                'proxy': True,
                'indexes': [],
            },
            bases=('oauth2_provider.oidcapplication',),
        ),
    ]
