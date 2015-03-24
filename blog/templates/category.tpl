{% extends 'layout.tpl' %}

{% block title %}
  Posts under {{ category.name }}
{% endblock %}

{% block caption %}
  <h2>Posts under {{ category.name }}</h2>
  <hr/>
{% endblock %}
