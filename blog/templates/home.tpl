{% extends '__layout.tpl' %}

{% block meta_tags %}
  {{ block.super }}
  <meta name="description"
        content="Ajoy Oommen's blog on topics relating to computer science and
                 programming" />
{% endblock %}

{% block title %}
  Ajoy Oommen's Web Log
{% endblock %}

{% block content %}
  {% include '_blog-list.tpl' %}
{% endblock %}
