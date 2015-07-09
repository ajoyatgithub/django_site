{% extends '__base.html' %}

{% block title %}
{% endblock %}

{% block body %}
  <div class="container blog">
    {% include '__header.tpl' %}

    <div class="row">
      <div class="offset-by-two eight columns">
	{% block content %}
	{% endblock %}
      </div>
    </div>
  </div>
{% endblock %}
