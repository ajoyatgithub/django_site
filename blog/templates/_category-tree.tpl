<h4>Browse categories</h4>
{% for c in categories %}
  <li class="nav-item item-head text-gray">
    {{ c.name }}
  </li>
  {% for s in c.children %}
    <a href="{% url 'blog:category' s.slug %}"
       class="nav-item item-link">
      {{ s.name }}
    </a>
  {% endfor %}
{% endfor %}
