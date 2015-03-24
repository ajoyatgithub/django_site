{% for p in posts %}
  <h4>
    <small>{{ p.created.date|date:"d M Y" }}</small>
    <a href="{% url 'blog.views.post' p.id p.slug %}">{{ p.title }}</a>
  </h4>
{% endfor %}
