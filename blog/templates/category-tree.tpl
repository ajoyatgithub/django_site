<h4>Categories</h4>
<div class="well">
  {% for c in categories %}
    <h5>{{ c.name }}</h5>
    <ul>
      {% for s in c.children %}
	<li>{{ s.name }}</li>
      {% endfor %}
    </ul>
  {% endfor %}
</div>
