{% for p in posts %}
  <p>
    <small class="date">{{ p.created.date|date:"d M Y" }}</small>
    <a href="{% url 'blog.views.post' p.id p.slug %}">{{ p.title }}</a>
  </p>
{% endfor %}
