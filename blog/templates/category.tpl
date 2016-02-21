{% extends '__layout.tpl' %}

{% block meta_tags %}
  {{ block.super }}
  <meta name="description"
        content="Posts created under {{category.name}}. Browse all categories" >
{% endblock %}

{% block title %}
  Posts | {{ category.name }}
{% endblock %}

{% block container %}
  <div class="row">
    <div class="col-md-3 col-md-offset-1">
      {% include '_category-tree.tpl' %}
    </div>
    <div class="col-md-7">
      <h4>Posts under {{ category.name }}</h4>
      {% include '_blog-list.tpl' %}
    </div>
  </div>
{% endblock %}
