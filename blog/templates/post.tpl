{% extends 'layout.tpl' %}

{% block title %}
  {{ post.title }}
{% endblock %}

{% block main %}
  <h3>{{ post.title }}<br /><small>{{ post.created|date:'F j, Y' }}</small></h3>
  <hr />
  {{ post.preview|safe}}
  <p class="Lead">
    Posted in
    <a href="{% url 'blog.views.category' post.category.slug %}">
      {{ post.category.name }}
    </a>
  </p>
  {% include 'blog-list.tpl' %}
  <hr />
{% endblock %}
