{% extends '__layout.tpl' %}

{% load django_markdown %}

{% block meta_tags %}
  {{ block.super }}
  <meta name="description" content="Author: Ajoy Oommen" />
{% endblock %}

{% block title %}
  {{ post.title }}
{% endblock %}

{% block content %}

  {% if not post.is_published %}
    <p class="alert alert-info text-center">
      Status : <strong>{{ post.get_status_display }}</strong>!
      To publish this post, go to admin using the links below. </p>
  {% endif %}

  <h2 class="font-comfortaa">
    {{ post.title }}
  </h2>

  <h5 class="text-gray">
    <span>

      <a href="{% url 'blog:archives_month' post.created|date:'Y' post.created|date:'m' %}">
        {{ post.created|date:'F j, Y' }}
      </a> |

      Posted in
      <a href="{% url 'blog:category' post.category.slug %}">
        {{ post.category.name }}
      </a> |
       {{ post.owner }}
    </span>
  </h5>

  <div class="text-justify text-post font-neuton">
    {{ post.body|markdown}}
  </div>

  {% if posts %}
    <h2>Related Posts</h2>
    {% include '_blog-list.tpl' %}
  {% endif %}
{% endblock %}
