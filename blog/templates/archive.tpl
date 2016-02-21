{% extends '__layout.tpl' %}

{% block title %}
  Posts in {{ date }}
{% endblock %}

{% block body %}
  <div class="container">
    <div class="row">
      <div class="col-md-10 col-md-offset-1">
        {% include '_header.tpl' %}
      </div>
    </div>
    <div class="row">
	<div class="col-md-3 col-md-offset-1">
	  {% include '_archive-tree.tpl' %}
	</div>
	<div class="col-md-7">
	  <h4>Posts in {{ date }}</h4>
	  {% include '_blog-list.tpl' %}
	</div>
    </div>
  </div>
{% endblock %}
