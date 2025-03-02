# Generated by Django 3.0.7 on 2020-06-30 18:55

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Amostra',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo_amostra', models.CharField(max_length=255)),
                ('metodo_de_coleta', models.CharField(max_length=255)),
                ('material', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'amostra',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Exame',
            fields=[
                ('id_exame', models.IntegerField(primary_key=True, serialize=False)),
                ('tipo', models.CharField(max_length=255)),
                ('virus', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'exame',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Gerencia',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'gerencia',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Paciente',
            fields=[
                ('id_paciente', models.IntegerField(primary_key=True, serialize=False)),
            ],
            options={
                'db_table': 'paciente',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Perfil',
            fields=[
                ('id_perfil', models.IntegerField(primary_key=True, serialize=False)),
                ('codigo', models.CharField(max_length=255, unique=True)),
                ('tipo', models.CharField(blank=True, max_length=255, null=True)),
            ],
            options={
                'db_table': 'perfil',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Pertence',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'pertence',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Pessoa',
            fields=[
                ('id_pessoa', models.IntegerField(primary_key=True, serialize=False)),
                ('cpf', models.CharField(max_length=11, unique=True)),
                ('nome', models.CharField(max_length=255)),
                ('endereco', models.CharField(max_length=255)),
                ('data_de_nascimento', models.DateField(blank=True, null=True)),
            ],
            options={
                'db_table': 'pessoa',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Possui',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'possui',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Realiza',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo_amostra', models.CharField(blank=True, max_length=255, null=True)),
                ('data_de_solicitacao', models.DateTimeField()),
                ('data_de_realizacao', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'realiza',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Requisita',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('data_de_requisicao', models.DateTimeField(blank=True, null=True)),
            ],
            options={
                'db_table': 'requisita',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Servico',
            fields=[
                ('id_servico', models.IntegerField(primary_key=True, serialize=False)),
                ('nome', models.CharField(max_length=255)),
                ('classe', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'servico',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Tutelamento',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('data_de_inicio', models.DateField()),
                ('data_de_termino', models.DateField(blank=True, null=True)),
            ],
            options={
                'db_table': 'tutelamento',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Usuario',
            fields=[
                ('id_usuario', models.IntegerField(primary_key=True, serialize=False)),
                ('area_de_pesquisa', models.CharField(blank=True, max_length=255, null=True)),
                ('instituicao', models.CharField(blank=True, max_length=255, null=True)),
                ('login', models.CharField(max_length=255, unique=True)),
                ('senha', models.CharField(max_length=255)),
            ],
            options={
                'db_table': 'usuario',
                'managed': False,
            },
        ),
    ]
