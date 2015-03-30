{% extends 'base.html' %}

{% block title %}
{% endblock %}

{% block content %}
  <div class="container blog">
    <header>
      <div class="row">
	<div class="text-center">
	  <h1><a href="{% url 'blog.views.home' %}">A WEBLOG</a></h1>
	  <h6>
	    on topics relating to Computer Science and Programming
	  </h6>
	</div>
      </div>
    </header>

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
