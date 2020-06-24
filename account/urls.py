from django.urls import path
from .views import AccountSignUpView, AccountSignInView, GuestSignUpView

urlpatterns = [
	path('/signup', AccountSignUpView.as_view()),
	path('/signin', AccountSignInView.as_view()),
	path('/guest/signup', GuestSignUpView.as_view()),
	# path('/guest/signin', GuestSigninView.as_view()),
]

