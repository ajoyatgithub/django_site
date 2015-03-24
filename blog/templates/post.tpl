{% extends 'layout.tpl' %}

{% block title %}
  {{ post.title }}
{% endblock %}

{% block main %}
  <br/>
  <h3>{{ post.title }}<br /><small>{{ post.created|date:'F j, Y' }}</small></h3>
  {{ post.preview|safe}}
  <hr />
  <em>
    Posted in
    <a href="{% url 'blog.views.category' post.category.slug %}">
      {{ post.category.name }}
    </a>
  </em>
{% endblock %}
