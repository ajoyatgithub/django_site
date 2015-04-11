{% extends 'layout.tpl' %}

{% block title %}
  Posts under {{ category.name }}
{% endblock %}

{% block main %}
  <div class="four columns">
    {% include 'category-tree.tpl' %}
  </div>
  <div class="eight columns">
    <strong>Posts under Category: {{ category.name }}</strong>
    <br/>
    {% include 'blog-list.tpl' %}
  </div>
{% endblock %}
