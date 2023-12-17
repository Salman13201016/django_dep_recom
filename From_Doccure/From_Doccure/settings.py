"""
Django settings for From_Doccure project.

Generated by 'django-admin startproject' using Django 4.2.7.

For more information on this file, see
https://docs.djangoproject.com/en/4.2/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/4.2/ref/settings/
"""

from pathlib import Path
import os


# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent
temp_dir = os.path.join(BASE_DIR,'templates')
static_dir = os.path.join(BASE_DIR,'static')


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/4.2/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'django-insecure-8q=zu#^b2w$xso(^$e)3bckrx1#96t*xlng@g-c01-7%r*el(m'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = []

SOCIALACCOUNT_PROVIDERS = {
    'google': {
        'SCOPE': [
            'profile',
            'email',
        ],
        'AUTH_PARAMS': {
            'access_type': 'online',
        }
    }
}

# {"web":{"client_id":"574229960386-3pcbtoip2rro0tpgc3v9e7i369tc96qn.apps.googleusercontent.com","project_id":"organic-edge-408114","auth_uri":"https://accounts.google.com/o/oauth2/auth","token_uri":"https://oauth2.googleapis.com/token","auth_provider_x509_cert_url":"https://www.googleapis.com/oauth2/v1/certs","client_secret":"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","redirect_uris":["http://127.0.0.1:8000/"],"javascript_origins":["http://127.0.0.1:8000"]}}

AUTHENTICATION_BACKENDS = [
    'auth_user.authentication.EmailAuthBackend',
    'django.contrib.auth.backends.ModelBackend',
    
    'allauth.account.auth_backends.AuthenticationBackend'
    'social_core.backends.google.GooleOAuth2'
    # Other authentication backends
]

# SOCAIL_AUTH_GOOGLE_OAUTH2_KEY = "574229960386"
# SOCAIL_AUTH_GOOGLE_OAUTH2_SECRET = "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"
# GOOGLE_OAUTH2_CLIENT_ID = '574229960386'
# GOOGLE_OAUTH2_CLIENT_SECRET = 'https://accounts.google.com/o/oauth2/auth'

# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'From_Doccure',
    'dashboard_from',
    'symptom',
    'prediction',
    'user',
    'division',
    'district',
    'station',
    'hospital',
    'address',
    'hospital_map',
    'Department_Details',
    'Hospital_Department',
    'social_django',
    'auth_user',
   
    
]


MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'social_django.middleware.SocialAuthExceptionMiddleware',
]

ROOT_URLCONF = 'From_Doccure.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [temp_dir],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
                'social_django.context_processors.backends',
            ],
        },
    },
]

WSGI_APPLICATION = 'From_Doccure.wsgi.application'


# Database
# https://docs.djangoproject.com/en/4.2/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'department',
        'USER': 'root',
        'PASSWORD': '',
        'HOST': 'localhost',
        'PORT': '3306',
    }
}


# Password validation
# https://docs.djangoproject.com/en/4.2/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/4.2/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/4.2/howto/static-files/

STATICFILES_DIRS  = [static_dir,]
STATIC_URL = 'static/'
MEDIA_URL = '/media/'
MEDIA_ROOT = BASE_DIR/'media/'
LOGIN_REDIRECT_URL = '/profile/'
# LOGIN_URL = '/aut_login/'
STATIC_ROOT = 'staticfiles'

SITE_ID = 1
# LOGIN_REDIRECT_URL = '/'
# LOGOUT_REDIRECT_URL = '/'

# Default primary key field type
# https://docs.djangoproject.com/en/4.2/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = "django.db.models.BigAutoField"

EMAIL_HOST = 'smtp.gmail.com'
EMAIL_HOST_USER = 'maniruzzaman.manir96@gmail.com'
EMAIL_HOST_PASSWORD = 'tobfixvfmrlpchzu' # qsxptvezrvvbgfof
EMAIL_PORT = 587
EMAIL_USE_TLS = True
EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
AUTHENTICATION_BACKENDS = [
    'social_core.backends.google.GoogleOAuth2',  # Google authentication backend
    'django.contrib.auth.backends.ModelBackend',  # Default Django authentication backend
    # Add other authentication backends as needed
]

LOGIN_REDIRECT_URL = 'home'

SOCIAL_AUTH_GOOGLE_OAUTH2_KEY = '229553171688-v842vpaunkrkch4ala37q5fep5errq5c.apps.googleusercontent.com'
SOCIAL_AUTH_GOOGLE_OAUTH2_SECRET = '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'
SOCIAL_AUTH_PIPELINE = (
    # ... other pipeline steps ...
    'dashboard_from.pipeline.capture_social_auth_data',  # Add this line
    # ... other pipeline steps ...
)