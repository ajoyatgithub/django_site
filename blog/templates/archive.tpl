{% extends '__layout.tpl' %}

{% block title %}
  Posts in {{ date }}
{% endblock %}

{% block content %}
  <div class="four columns">
    {% include '_archive-tree.tpl' %}
  </div>
  <div class="eight columns">
    <strong>Posts in {{ date }}</strong>
    <br/>
    {% include '_blog-list.tpl' %}
  </div>
{% endblock %}
