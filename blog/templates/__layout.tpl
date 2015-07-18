{% extends '__base.html' %}

{% block title %}
{% endblock %}

{% block body %}
  {% include '__header.tpl' %}
  <div class="container blog">
    <div class="row">
      <div class="offset-by-one ten columns">
	{% block content %}
	{% endblock %}
      </div>
    </div>
  </div>
{% endblock %}
