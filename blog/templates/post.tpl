{% extends 'layout.tpl' %}

{% block title %}
  {{ post.title }}
{% endblock %}

{% block main %}
  <h1>{{ post.title }}</h1>
  <p>
    <em>On {{ post.created|date:'F j, Y' }}<br />
      Posted in
      <a href="{% url 'blog.views.category' post.category.slug %}">
	{{ post.category.name }}
      </a>
    </em>
  </p>
  {{ post.preview|safe}}
  {% if posts %}
    <p><u>Related Posts</u></p>
    {% include 'blog-list.tpl' %}
  {% endif %}
  <hr />
{% endblock %}
