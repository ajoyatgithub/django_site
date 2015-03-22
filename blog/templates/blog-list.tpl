{% for p in posts %}
  <h4>
    <small>{{ p.created.date }}</small> {{ p.title }}
  </h4>
{% endfor %}
