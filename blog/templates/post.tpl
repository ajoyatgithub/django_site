{% extends '__layout.tpl' %}

{% block meta_tags %}
  {{ block.super }}
  <meta name="description" content="Author: Ajoy Oommen" />
{% endblock %}

{% block title %}
  {{ post.title }}
{% endblock %}

{% block content %}
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
      </a>
    </span>
  </h5>

  <div class="text-justify text-post font-neuton">
    {{ post.preview|safe}}
  </div>

  {% if posts %}
    <h2>Related Posts</h2>
    {% include '_blog-list.tpl' %}
  {% endif %}
{% endblock %}
