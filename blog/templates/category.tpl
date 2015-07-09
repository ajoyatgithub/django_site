{% extends '__layout.tpl' %}

{% block title %}
  Posts under {{ category.name }}
{% endblock %}

{% block content %}
  <div class="four columns">
    {% include '_category-tree.tpl' %}
  </div>
  <div class="eight columns">
    <strong>Posts under Category: {{ category.name }}</strong>
    <br/>
    {% include '_blog-list.tpl' %}
  </div>
{% endblock %}
