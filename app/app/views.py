from django.http import HttpResponse

def hello(request):
    return HttpResponse("Olá pagar.me :D")