<strong>All categories</strong><br />
{% for c in categories %}
  &#8226; {{ c.name }}<br />
  {% for s in c.children %}
    <p class="indent-block">
      <a href="{% url 'blog.views.category' s.slug %}">
	{{ s.name }}
      </a>
    </p>
  {% endfor %}
{% endfor %}
