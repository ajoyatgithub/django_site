{% extends '__layout.tpl' %}

{% block title %}
  {{ post.title }}
{% endblock %}

{% block content %}
  <h1 class="text-center">
    {{ post.title }}
  </h1>

  <p>
    <span>
      {% if request.user.is_staff %}
        <a href="{% url 'admin:blog_post_change' post.id %}">
          [Edit Post]</a>
      {% endif %}

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
    <div class="row">
      <h4>Related Posts</h4>
      {% include '_blog-list.tpl' %}
    </div>
  {% endif %}
{% endblock %}
