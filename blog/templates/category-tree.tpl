<p><strong>Browse categories</strong></p>
{% for c in categories %}
  <p>{{ c.name }}<br/>
    {% for s in c.children %}
      <small>&raquo; <a href="{% url 'blog.views.category' s.slug %}">{{ s.name }}</a></small><br />
    {% endfor %}
  </p>
{% endfor %}
