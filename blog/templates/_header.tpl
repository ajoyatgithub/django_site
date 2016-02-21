<div class="row">
  <div class="col-md-12">
    <h1>
      <a href="{% url 'blog.views.home' %}" class="font-baskerville">
        WEBLOG
      </a>
      {% if request.path == '/' %}
        <small class="font-comfortaa">
          on topics relating to Computer Science and Programming
        </small>
      {% endif %}
    </h1>
    <hr>
  </div>
</div>
