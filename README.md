# Weblog

[![Build Status](https://travis-ci.org/ajoyoommen/weblog.svg?branch=master)](https://travis-ci.org/ajoyoommen/weblog)

This is the source code of my blog powered by Django.

## Getting started

Clone this repository

```shell
git clone git@github.com:ajoyoommen/weblog.git
cd weblog/
```


Ensure you have `virtualenv` installed. Also postgresql and `libpq-dev` or its equivalent. Create and activate a new virtual environment.

```shell
pip install -r requirements.txt
```

Create a database for the blog. Export database credentials as enviroment variables.

```shell
export DBNAME=weblog
export DBPASS=password
export DBUSER=postgres
export STATIC_ROOT=/home/user/static/
export MEDIA_ROOT=/home/user/media/
```

Create database schema for the application

```shell
python manage.py migrate
```

Run a developement server
```shell
python manage.py runserver
```

## Running tests

You can run tests using the postgres database by running

`./manage.py test`

In memory tests (faster) can be run using:

`./manage.py test --settings=weblog.settings.tests`