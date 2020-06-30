from django.shortcuts import render
from django.http import HttpResponse

# from .models import Usuario
# from .models import Perfil
from django.db import connection
from collections import namedtuple
from django.template import loader


def index(request):
    return HttpResponse("MAC0350/2020: Data Management Example")


def query1(request):
    with connection.cursor() as cursor:
        cursor.execute(
            "\
                SELECT exame.tipo, COUNT(*) totalCount\
                FROM public.realiza, public.exame\
                WHERE realiza.id_exame = exame.id_exame\
                GROUP BY exame.tipo;"
        )
        result = named_tuple_fetchall(cursor)

    template = loader.get_template("example/query1.html")
    context = {
        "query1_result_list": result,
    }

    return HttpResponse(template.render(context, request))


def query2(request):
    with connection.cursor() as cursor:
        cursor.execute(
            "\
                SELECT *\
                FROM public.realiza\
                ORDER BY data_de_solicitacao DESC LIMIT 10;"
        )
        result = named_tuple_fetchall(cursor)
    print(result)
    template = loader.get_template("example/query2.html")
    context = {
        "query2_result_list": result,
    }

    return HttpResponse(template.render(context, request))


def query3(request):
    with connection.cursor() as cursor:
        cursor.execute(
            "\
            SELECT exame.id_exame, tipo, virus, data_de_solicitacao, data_de_realizacao\
            FROM public.exame, public.paciente, public.realiza\
            WHERE exame.id_exame = realiza.id_exame AND paciente.id_paciente = realiza.id_paciente;"
        )
        result = named_tuple_fetchall(cursor)
    print(result)
    template = loader.get_template("example/query3.html")
    context = {
        "query3_result_list": result,
    }

    return HttpResponse(template.render(context, request))


def query4(request):
    with connection.cursor() as cursor:
        cursor.execute(
            "\
            SELECT usuario.id_usuario, login, codigo, tipo, servico.nome\
            FROM public.usuario, public.possui, public.perfil, public.servico, public.pertence\
            WHERE usuario.id_usuario = possui.id_usuario AND perfil.id_perfil = possui.id_perfil \
	        AND pertence.id_perfil = perfil.id_perfil AND pertence.id_servico = servico.id_servico;"
        )
        result = named_tuple_fetchall(cursor)
    print(result)
    template = loader.get_template("example/query4.html")
    context = {
        "query4_result_list": result,
    }

    return HttpResponse(template.render(context, request))


def query5(request):
    with connection.cursor() as cursor:
        cursor.execute(
            "\
            SELECT tutelamento.id_usuario_tutelado, usuario.login, servico.nome\
            FROM public.tutelamento, public.usuario, public.servico\
            WHERE tutelamento.id_usuario_tutelado = usuario.id_usuario AND tutelamento.id_servico = servico.id_servico;"
        )
        result = named_tuple_fetchall(cursor)
    print(result)
    template = loader.get_template("example/query5.html")
    context = {
        "query5_result_list": result,
    }

    return HttpResponse(template.render(context, request))


def named_tuple_fetchall(cursor):
    desc = cursor.description
    nt_result = namedtuple("Result", [col[0] for col in desc])
    result = [nt_result(*row) for row in cursor.fetchall()]

    return result
