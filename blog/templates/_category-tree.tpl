<h4>Browse categories</h4>
<ul class="list-group">
  {% for c in categories %}
    <li class="list-group-item title">
      {{ c.name }}
    </li>
    {% for s in c.children %}
      <a href="{% url 'blog.views.category' s.slug %}"
         class="list-group-item">
	{{ s.name }}
      </a>
    {% endfor %}
  {% endfor %}
</ul>
