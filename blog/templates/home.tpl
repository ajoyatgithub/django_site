{% extends 'base.html' %}

{% block title %}
  Blog| Ajoy Oommen
{% endblock %}

{% block content %}
  {% for p in posts %}
    {{ p.title }} {{ p.body|safe }}
  {% endfor %}
{% endblock %}
