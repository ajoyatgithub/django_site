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
	{% include 'blog-list.tpl' %}
      </div>

      <div class="col-md-3 col-xs-12">
	{% include 'category-tree.tpl' %}
      </div>
    </div>

  </div>
{% endblock %}
