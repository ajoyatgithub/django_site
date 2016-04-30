{% extends '__base.html' %}

{% block title %}
  WebLog by Ajoy Oommen
{% endblock %}

{% block body %}
  <div class="container">

    <div class="row">
      <div class="col-md-10 col-md-offset-1">
        {% include '_header.tpl' %}
      </div>

      {% if request.user.is_staff %}
        <div class="col-md-10 col-md-offset-1">
          {% include '_footer.tpl' %}
        </div>
      {% endif %}
    </div>

    {% block container %}
      <div class="row">
        <div class="col-md-10 col-md-offset-1">
	  {% block content %}
	  {% endblock %}
        </div>
      </div>
    {% endblock %}
  </div>
{% endblock %}
