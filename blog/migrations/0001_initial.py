# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=100, db_index=True)),
                ('slug', models.CharField(db_index=True, max_length=100, blank=True)),
                ('parent', models.ForeignKey(blank=True, to='blog.Category', null=True)),
            ],
            options={
                'verbose_name_plural': 'Categories',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Post',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=100)),
                ('slug', models.CharField(max_length=100, blank=True)),
                ('body', models.TextField()),
                ('status', models.CharField(default=b'd', max_length=2, choices=[(b'p', b'Published'), (b'd', b'Draft'), (b'u', b'Unpublished')])),
                ('created', models.DateTimeField(db_index=True, blank=True)),
                ('modified', models.DateTimeField(blank=True)),
                ('category', models.ForeignKey(blank=True, to='blog.Category', null=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Tag',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=50)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.AddField(
            model_name='post',
            name='tags',
            field=models.ManyToManyField(to='blog.Tag', null=True, blank=True),
            preserve_default=True,
        ),
    ]
