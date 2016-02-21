<h4>Browse archives</h4>
<ul class="list-group">
  {% for y in archives %}
    <li class="list-group-item title">
      {{ y.year }}
    </li>
    {% for m in y.months %}
      <a href="{% url 'blog.views.archive' y.year m.month  %}"
         class="list-group-item">
	{{ m.name }}
      </a>
    {% endfor %}
  {% endfor %}
</ul>
