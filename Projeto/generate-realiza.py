import random as rd

def horario():
    hour = str(rd.randint(8, 17)).zfill(2)
    minute = str(rd.randint(1,60)).zfill(2)
    seconds = str(rd.randint(1, 60)).zfill(2)

    return f'{hour}:{minute}:{seconds}'

def timestamp():
    month = str(rd.randint(1, 5)).zfill(2)
    day = str(rd.randint(1, 28)).zfill(2)

    executionDay = int(day) + rd.randint(1, 7)
    executionMonth = int(month)
    if executionDay > 28:
        executionMonth = executionMonth + 1
        executionDay = executionDay - 28

    executionMonth = str(executionMonth).zfill(2)
    executionDay = str(executionDay).zfill(2)

    return f'2020-{month}-{day} {horario()}', f'2020-{executionMonth}-{executionDay} {horario()}'

insert = 'INSERT INTO public.realiza'
tuples = '    (id_paciente, id_exame, codigo_amostra, data_de_solicitacao, data_de_realizacao)'

id_paciente = []
for i in range(1, 11):
    id_paciente.append(str(i))
for i in range(5):
    id_paciente.append(str(rd.randint(1, 10)))

id_exame = []
for i in range(8, 0, -1):
    id_exame.append(str(i))
for i in range(7):
    id_exame.append(str(rd.randint(1, 8)))

codigo_amostra = []
for i in range(15):
    codigo_amostra.append(f'{id_exame[i].zfill(2)}A{str(i+1).zfill(2)}')

for i in range(15):
    print(insert)
    print(tuples)
    data1, data2 = timestamp()
    print(f'VALUES({id_paciente[i]}, {id_exame[i]}, \'{codigo_amostra[i]}\', \'{data1}\', \'{data2}\');\n')
