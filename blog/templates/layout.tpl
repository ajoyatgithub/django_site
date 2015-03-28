{% extends 'base.html' %}

{% block title %}
  Ajoy's blog
{% endblock %}

{% block content %}
  <div class="container blog">
    <div class="row">
      <div class="">
	<br />
	<a class="button" href="http://ajoyoommen.com">ajoyoommen.com</a>
	&raquo; <a href="{% url 'blog.views.home' %}">Recent blogs</a>
      </div>
    </div>

    <div class="row">
      <hr />
    </div>

    <div class="row">
      <div class="offset-by-two eight columns">
	{% block main %}
	  {% block caption %}
	  {% endblock %}

	  {% include 'blog-list.tpl' %}
	{% endblock %}
      </div>
    </div>
  </div>
{% endblock %}
