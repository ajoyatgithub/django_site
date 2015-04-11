{% extends 'layout.tpl' %}

{% block title %}
  Posts in {{ date }}
{% endblock %}

{% block main %}
  <div class="four columns">
    {% include 'archive-tree.tpl' %}
  </div>
  <div class="eight columns">
    <strong>Posts in {{ date }}</strong>
    <br/>
    {% include 'blog-list.tpl' %}
  </div>
{% endblock %}
