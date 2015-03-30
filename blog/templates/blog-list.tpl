{% for p in posts %}
  <div class="row post-list">
    <small class="post-date">{{ p.created.date|date:"d M Y" }}</small>
    <a href="{% url 'blog.views.post' p.id p.slug %}">{{ p.title }}</a>
  </div>
{% endfor %}
