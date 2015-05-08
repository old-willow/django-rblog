# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0002_auto_20150506_2250'),
    ]

    operations = [
        migrations.AlterField(
            model_name='author',
            name='gender',
            field=models.CharField(default=b'0', max_length=1, verbose_name=b'gender', choices=[(b'0', b'Choose Gender'), (b'1', b'Male'), (b'2', b'Female')]),
        ),
    ]
