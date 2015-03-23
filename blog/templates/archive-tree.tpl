<p><strong>Browse archives</strong></p>
{% for y in archives %}
  <p>{{ y.year }}<br/>
    {% for m in y.months %}
      <small>&raquo; {{ m.month }}</small><br/>
    {% endfor %}
  </p>
{% endfor %}
