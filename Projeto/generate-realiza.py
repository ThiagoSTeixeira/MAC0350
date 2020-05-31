import random as rd

def timestamp():
    month = str(rd.randint(3, 5))
    day = str(rd.randint(10, 30))
    hour = str(rd.randint(10, 17))
    minute = str(rd.randint(10,60))
    seconds = str(rd.randint(10, 60))

    return f'2020-0{month}-{day} {hour}:{minute}:{seconds}'

insert = 'INSERT INTO public.realiza'
tuples = '    (id_paciente, id_exame, codigo_amostra, data_de_realizacao)'

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
    print(f'VALUES({id_paciente[i]}, {id_exame[i]}, \'{codigo_amostra[i]}\', \'{timestamp()}\');\n')