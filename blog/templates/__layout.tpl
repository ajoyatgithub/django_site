{% extends '__base.html' %}

{% block title %}
{% endblock %}

{% block body %}
  <div class="container">
    {% include '__header.tpl' %}
    <div class="row">
      <div class="col-md-10 col-md-offset-1">
	{% block content %}
	{% endblock %}
      </div>
    </div>
  </div>
{% endblock %}
