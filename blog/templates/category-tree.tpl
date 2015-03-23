<p><strong>Browse categories</strong></p>
{% for c in categories %}
  <p>{{ c.name }}<br/>
    {% for s in c.children %}
      <small>&raquo; {{ s.name }}</small><br />
    {% endfor %}
  </p>
{% endfor %}
