from django.http import HttpResponse

def hello(request):
    return HttpResponse("Olá, desafio pagar.me :D")