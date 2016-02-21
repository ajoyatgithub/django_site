{% extends '__base.html' %}

{% block title %}
{% endblock %}

{% block body %}
  <div class="container">
    <div class="row">
      <div class="col-md-10 col-md-offset-1">
        {% include '__header.tpl' %}
	{% block content %}
	{% endblock %}
      </div>
    </div>
  </div>
{% endblock %}
