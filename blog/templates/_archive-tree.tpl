<h4>Browse archives</h4>
  {% for y in archives %}
    <li class="nav-item item-head text-gray">
      {{ y.year }}
    </li>
    {% for m in y.months %}
      <a href="{% url 'blog:archives_month' y.year m.month  %}"
         class="nav-item item-link">
	{{ m.name }}
      </a>
    {% endfor %}
  {% endfor %}
