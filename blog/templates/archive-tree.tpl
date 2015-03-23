<h4>Archives</h4>
<div class="well">
  {% for y in archives %}
    <h5>{{ y.year }}</h5>
    <ul>
      {% for m in y.months %}
	<li>{{ m.month }}</li>
	{% for d in m.days %}
	  {{d}}
	{% endfor %}
      {% endfor %}
    </ul>
  {% endfor %}
</div>
