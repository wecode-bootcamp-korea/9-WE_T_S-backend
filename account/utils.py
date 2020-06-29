import jwt
import json

from django.http import JsonResponse

from ami.settings import SECRET_KEY, ALGORITHM
from .models import Account

def login_required(func):
    def wrapper(self, request, *args, **kwargs):
        access_token = request.headers.get('Authorization', None)

        if access_token is None:
            return JsonResponse({'message' : 'INVALID_TOKEN'}, status=400)

        try:
            user_id      = jwt.decode(access_token, SECRET_KEY, ALGORITHM)
            user         = Account.objects.get(id=user_id['id'])
            request.user = user

            return func(self, request, *args, **kwargs)

        except Account.DoesNotExist:
            return JsonResponse({'message' : 'UNKNOWN_USER'}, status=401)

        except jwt.exceptions.DecodeError:
            return JsonResponse({'message' : 'INVALID_TOKEN'}, status=401)

    return wrapper
