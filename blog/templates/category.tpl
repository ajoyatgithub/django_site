{% extends '__layout.tpl' %}

{% block title %}
  Posts under {{ category.name }}
{% endblock %}

{% block body %}
  <div class="container">
    {% include '_header.tpl' %}
    <div class="row">
      <div class="col-md-3">
	{% include '_category-tree.tpl' %}
      </div>
      <div class="col-md-9">
	<h4>Posts under {{ category.name }}</h4>
	{% include '_blog-list.tpl' %}
      </div>
    </div>
  </div>
{% endblock %}
