{% if category %}
  <a href="{% url 'admin:blog_category_change' category.id %}"
     class="label label-primary">Edit Category
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
