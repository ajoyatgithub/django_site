<div class="row">
  <div class="col-md-12">
    <hr>
    {% if request.user.is_staff %}

      {% if category %}
        <a href="{% url 'admin:blog_category_change' category.id %}"
           class="label label-primary">
          Edit Category
        </a>
      {% endif %}

      {% if post %}
        <a href="{% url 'admin:blog_post_change' post.id %}"
           class="label label-primary">
          Edit Post
        </a>
      {% else %}
        <a href="{% url 'admin:blog_post_add' %}"
           class="label label-success">
          New Post
        </a>
      {% endif %}

      <a href="{% url 'admin:logout' %}?next={{ request.path }}"
         class="label label-danger">
        Logout
      </a>

      <hr />
    {% endif %}
  </div>
</div>
