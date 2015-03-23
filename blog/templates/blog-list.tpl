{% for p in posts %}
  <h4>
    <small>{{ p.created.date|date:"d M Y" }}</small> {{ p.title }}
  </h4>
{% endfor %}
