from weblog.settings import *

DEBUG = True

INSTALLED_APPS += ('debug_toolbar', )

MIDDLEWARE_CLASSES += ('debug_toolbar.middleware.DebugToolbarMiddleware', )
