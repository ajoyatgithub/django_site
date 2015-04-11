{% extends 'layout.tpl' %}

{% block title %}
  {{ post.title }}
{% endblock %}

{% block main %}
  <h1 class="text-center">{{ post.title }}</h1>
  <p>
    <span class="post-meta">
    Posted in
    <a href="{% url 'blog.views.category' post.category.slug %}">
      {{ post.category.name }}
    </a>,
    on
    <a href="{% url 'blog.views.archive' post.created|date:'Y' post.created|date:'m' %}">
      {{ post.created|date:'F j, Y' }}
    </a>
    </span>
  </p>
  <div class="text-justify">
    {{ post.preview|safe}}
  </div>
  {% if posts %}
    <div class="related">
      <strong>Related Posts</strong>
      {% include 'blog-list.tpl' %}
    </div>
  {% endif %}
{% endblock %}
