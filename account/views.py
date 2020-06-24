import json
import bcrypt
import jwt
from django.views import View
from django.http import JsonResponse
from ami.settings import SECRET_KEY
from .models import Account, Guest

# Create your views here.

class AccountSignUpView(View):
	def post(self, request):
		data = json.loads(request.body)
		try:
			if Account.objects.filter(email=data['email']).exists():
				return JsonResponse({'message':'EMAIL_EXIST'}, status=401)
			else:
				hashed_password = bcrypt.hashpw(data['password'].encode('utf-8'), bcrypt.gensalt())
				Account.objects.create(
					first_name = data['first_name'],
					last_name = data['last_name'],
					email = data['email'],
					password = hashed_password.decode('utf-8')
				)
				return JsonResponse({'message':'SUCCESS'}, status=200)
	
		except KeyError:
			return JsonResponse({'message':'INVALID_KEY'}, status=400)



class AccountSignInView(View):
	def post(self, request):
		data = json.loads(request.body)
		try:
			if Account.objects.filter(email=data['email']).exists():
				user = Account.objects.get(email=data['email'])
				if bcrypt.checkpw(data['password'].encode('utf-8'), user.password.encode('utf-8')):
					access_token = jwt.encode({'id':user.id}, SECRET_KEY, algorithm='HS256')
					return JsonResponse({'access_token':access_token.decode('utf-8')}, status=200)
				else:
					return JsonResponse({'message':'WRONG_PASSWORD'}, status=401)
			else:
				return JsonResponse({'message':'WRONG_EMAIL'}, status=401)
					
		except KeyError:
			return JsonResponse({'message':'INVALID_KEY'}, status=400)


class GuestSignUpView(View):
	def post(self, request):
		data = json.loads(request.body)
		try:
			if Guest.objects.filter(email=data['email']).exists():
				return JsonResponse({'message':'EMAIL_EXIST'}, status=401)
			else:
				Guest.objects.create(
					email = data['email']
				)
				return JsonResponse({'message':'SUCCESS'}, status=200)
		except KeyError:
			return JsonResponse({'message':'INVALID_KEY'}, status=400)




# class GuestSignInView(View):
# 	def post(self, request):
# 		data = json.loads(request.body)
# 		try:
# 			if Guest.objects.filter(email=data['email']).exists():
# 				user = Guest.objects.get(email=data['email'])
# 				if user.email == data['email']:
# 					return JsonResponse({'message':'SUCCESS'}, status=200)
# 				else:
# 					return JsonResponse({'message':'WRONG_EMAIL'}, status=401)
# 			else:
# 				return JsonResponse({'message':'DOES_NOT_EXIST_EMAIL'}, status=401)
					
# 		except KeyError:
# 			return JsonResponse({'message':'INVALID_KEY'}, status=400)



