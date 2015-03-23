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
	<h2>Blog posts</h2>
	<hr />
	{% include 'blog-list.tpl' %}
      </div>
    </div>
    <hr/>
    <p class="text-center"><a href="http://ajoyoommen.com">Home</a></p>
  </div>
{% endblock %}
