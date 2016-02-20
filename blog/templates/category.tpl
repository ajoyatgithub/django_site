{% extends '__layout.tpl' %}

{% block title %}
  Posts under {{ category.name }}
{% endblock %}

{% block body %}
  {% include '__header.tpl' %}
  <div class="container">
    <div class="row">
      <div class="col-md-3">
	{% include '_category-tree.tpl' %}
      </div>
      <div class="col-md-9">
	<strong>Posts under {{ category.name }}</strong>
	<br/>
	{% include '_blog-list.tpl' %}
      </div>
    </div>
  </div>
{% endblock %}
