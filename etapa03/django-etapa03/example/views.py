from django.shortcuts import render
from django.http import HttpResponse
#from .models import Usuario
#from .models import Perfil
from django.db import connection
from collections import namedtuple
from django.template import loader
                        
def index(request):
    return HttpResponse("MAC0350/2020: Data Management Example")

def query1(request):
    with connection.cursor() as cursor:
        cursor.execute('\
                SELECT exame.tipo, COUNT(*) totalCount\
                FROM public.realiza, public.exame\
                WHERE realiza.id_exame = exame.id_exame\
                GROUP BY exame.tipo;')
        result = named_tuple_fetchall(cursor)
    
    template = loader.get_template('example/query1.html')
    context = {'query1_result_list': result,}
    
    return HttpResponse(template.render(context, request))

def query2(request):
    with connection.cursor() as cursor:
        cursor.execute('\
                SELECT *\
                FROM public.realiza\
                ORDER BY data_de_solicitacao DESC LIMIT 10;')
        result = named_tuple_fetchall(cursor)
    print(result)
    template = loader.get_template('example/query2.html')
    context = {'query2_result_list': result,}
    
    return HttpResponse(template.render(context, request))

def named_tuple_fetchall(cursor):
    desc = cursor.description
    nt_result = namedtuple('Result', [col[0] for col in desc])
    result = [nt_result(*row) for row in cursor.fetchall()]

    return result
