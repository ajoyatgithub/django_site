{% extends 'base.html' %}

{% block title %}
  Ajoy's blog
{% endblock %}

{% block content %}
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-xs-6">
	<br />
	<strong>Ajoy Oommen</strong>
	<br />
	&raquo; <a href="http://ajoyoommen.com">Home</a>
	&raquo; <a href="{% url 'blog.views.home' %}">Recent blogs</a>
      </div>
    </div>

    <div class="row">
      <hr />
    </div>

    <div class="row">
      <div class="col-md-3 col-xs-12">
	{% include 'category-tree.tpl' %}
	{% include 'archive-tree.tpl' %}
      </div>

      <div class="col-md-9 col-xs-12">
	{% block main %}
	  {% block caption %}
	  {% endblock %}

	  {% include 'blog-list.tpl' %}
	{% endblock %}
      </div>
    </div>
  </div>
{% endblock %}
