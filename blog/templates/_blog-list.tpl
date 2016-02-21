{% for p in posts %}
  <h3>
    <span class="font-monaco font-size-70pc">
      {{ p.created.date|date:"d M Y" }} &raquo; </span>
    <a href="{% url 'blog:post' p.id p.slug %}">{{ p.title }}</a>
  </h3>
{% endfor %}
