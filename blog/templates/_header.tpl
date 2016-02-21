<div class="row">
  <div class="col-md-12">
    <p class="h1">
      <a href="{% url 'blog:index' %}" class="font-baskerville">
        WEBLOG
      </a>
      {% if request.path == '/' %}
        <small class="font-comfortaa">
          on topics relating to Computer Science and Programming
        </small>
      {% endif %}
    </p>
    <hr>
  </div>
</div>
