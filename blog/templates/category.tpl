{% extends 'layout.tpl' %}

{% block title %}
  Posts under {{ category.name }}
{% endblock %}

{% block caption %}
  <strong>Posts under Category: {{ category.name }}</strong>
  <br/>
{% endblock %}
