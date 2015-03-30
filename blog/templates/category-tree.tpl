<p><strong>Browse categories</strong></p>
{% for c in categories %}
  <p>{{ c.name }}
    <ul>
    {% for s in c.children %}
      <li>
	<a href="{% url 'blog.views.category' s.slug %}">
	  {{ s.name }}
	</a>
      </li>
    {% endfor %}
    </ul>
  </p>
{% endfor %}
