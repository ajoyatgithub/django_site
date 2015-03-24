{% extends 'base.html' %}

{% block title %}
  Blog| Ajoy Oommen
{% endblock %}

{% block content %}
  <div class="container">
    <div class="row">

    </div>

    <div class="row">
      <div class="col-md-3 col-xs-12">
	<br />
	<br />
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
    <hr/>
    <p class="text-center"><a href="http://ajoyoommen.com">Home</a></p>
  </div>
{% endblock %}
