{% extends 'layout.tpl' %}

{% block title %}
  Posts under {{ category.name }}
{% endblock %}

{% block caption %}
  <h3>Posts under {{ category.name }}</h3>
  <br/>
{% endblock %}
