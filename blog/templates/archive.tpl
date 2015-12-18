{% extends '__layout.tpl' %}

{% block title %}
  Posts in {{ date }}
{% endblock %}

{% block body %}
  {% include '__header.tpl' %}
  <div class="container blog">
    <div class="row">
	<div class="three columns archives">
	  {% include '_archive-tree.tpl' %}
	</div>
	<div class="nine columns">
	  <strong class="fonts120">Posts in {{ date }}</strong>
	  <br/>
	  {% include '_blog-list.tpl' %}
	</div>
    </div>
  </div>
{% endblock %}
