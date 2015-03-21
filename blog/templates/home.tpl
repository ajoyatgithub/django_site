{% extends 'base.html' %}

{% block title %}
  Blog| Ajoy Oommen
{% endblock %}

{% block content %}
  <div class="container">
    <div class="row">
      <div class="col-md-offset-2 col-md-10 col-xs-12">
	<h2>The Blog</h2>
	<hr />
      </div>
    </div>

    <div class="row">
      <div class="col-md-7 col-md-offset-2 col-xs-12">
	{% for p in posts %}
	    <h4><small>{{ p.created.date }}</small> {{ p.title }}</h4>
	{% endfor %}
      </div>

      <div class="col-md-3 col-xs-12">
	<h4>Categories</h4>
	<div class="well">
	  {% for c in categories %}
	    <h5>{{ c.name }}</h5>
	  {% endfor %}
	</div>
      </div>
    </div>

  </div>
{% endblock %}
