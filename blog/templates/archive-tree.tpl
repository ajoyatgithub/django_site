<p><strong>Browse archives</strong></p>
{% for y in archives %}
  <p>{{ y.year }}<br/>
    {% for m in y.months %}
      <small>
	&raquo;
	<a href="{% url 'blog.views.archive' y.year m.month  %}">
	  {{ m.name }}
	</a>
      </small>
      <br/>
    {% endfor %}
  </p>
{% endfor %}
