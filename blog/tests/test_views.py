from django import test
from django.core.urlresolvers import reverse

from blog.models import Post, Category


class BlogViewsTestCase(test.TestCase):
    def setUp(self):
        # Add parent category and post category
        parent = Category(name='Writing', parent=None)
        parent.save()
        category = Category(name='Thoughts', parent=parent)
        category.save()
        # Create a draft
        _post = Post(title='Random thoughts of the author',
                     body='Thoughts turned to words.', category=category)
        _post.save()
        self.draft = _post
        # Publish a post
        post = Post(title='New thoughts from without',
                    body='A post fit to be published!', category=category)
        post.save()
        post.publish()
        self.post = post

        self.client = test.Client()

    def test_index(self):
        response = self.client.get('/')
        self.assertEqual(response.status_code, 200)
        posts = response.context['posts']
        self.assertNotIn(self.draft, posts)
        self.assertIn(self.post, posts)

    def test_post_view(self):
        created = self.post.created
        post_url = reverse('blog:post', kwargs=dict(
            year=created.year, month=created.month, day=created.day,
            slug=self.post.slug))
        response = self.client.get(post_url)
        self.assertEqual(response.status_code, 200)
        post = response.context['post']
        posts = response.context['posts']
        self.assertEqual(post, self.post)
        self.assertEqual(posts.count(), 0)

    def test_draft_view(self):
        created = self.draft.created
        draft_url = reverse('blog:post', kwargs=dict(
            year=created.year, month=created.month, day=created.day,
            slug=self.draft.slug))
        response = self.client.get(draft_url)
        self.assertEqual(response.status_code, 404)
