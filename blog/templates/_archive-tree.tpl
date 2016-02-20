<strong>Browse archives</strong><br />
{% for y in archives %}
  &#8226; {{ y.year }}<br/>
  {% for m in y.months %}
    <p>
      <a href="{% url 'blog.views.archive' y.year m.month  %}">
	{{ m.name }}
      </a>
    </p>
  {% endfor %}
{% endfor %}
