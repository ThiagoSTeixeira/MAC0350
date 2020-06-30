# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Amostra(models.Model):
    id_paciente = models.ForeignKey('Paciente', models.DO_NOTHING, db_column='id_paciente')
    id_exame = models.ForeignKey('Exame', models.DO_NOTHING, db_column='id_exame')
    codigo_amostra = models.CharField(max_length=255, primary_key=True)
    metodo_de_coleta = models.CharField(max_length=255)
    material = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'amostra'
        unique_together = (('id_paciente', 'id_exame', 'codigo_amostra'),)
    
    def __str__(self):
        return f'{self.codigo_amostra}'


class Exame(models.Model):
    id_exame = models.IntegerField(primary_key=True)
    tipo = models.CharField(max_length=255)
    virus = models.CharField(max_length=255)

    servicos = models.ManyToManyField('example.Servico', through='Gerencia')

    class Meta:
        managed = False
        db_table = 'exame'
        unique_together = (('tipo', 'virus'),)

    def __str__(self):
        return f'Tipo: {self.tipo}, Vírus: {self.virus}'


class Gerencia(models.Model):
    id_servico = models.ForeignKey('Servico', models.DO_NOTHING, db_column='id_servico', primary_key=True)
    id_exame = models.ForeignKey(Exame, models.DO_NOTHING, db_column='id_exame')

    class Meta:
        managed = False
        db_table = 'gerencia'
        verbose_name_plural = "gerenciam"
        unique_together = (('id_servico', 'id_exame'),)

    def __str__(self):
        return f'id_servico: {self.id_servico}, id_exame: {self.id_exame}'


class Paciente(models.Model):
    id_paciente = models.IntegerField(primary_key=True)
    id_pessoa = models.OneToOneField('Pessoa', models.DO_NOTHING, db_column='id_pessoa')

    class Meta:
        managed = False
        db_table = 'paciente'
    def __str__(self):
        return f'id_paciente: {self.id_paciente}'

class Perfil(models.Model):
    id_perfil = models.IntegerField(primary_key=True)
    codigo = models.CharField(unique=True, max_length=255)
    tipo = models.CharField(max_length=255, blank=True, null=True)

    usuarios = models.ManyToManyField('example.Usuario', through='Possui')
    servicos = models.ManyToManyField('example.Servico', through='Pertence')

    class Meta:
        managed = False
        db_table = 'perfil'
        verbose_name_plural = "Perfis"
    
    def __str__(self):
        return f'tipo: {self.tipo}'


class Pertence(models.Model):
    id_servico = models.ForeignKey('Servico', models.DO_NOTHING, db_column='id_servico', primary_key=True)
    id_perfil = models.ForeignKey(Perfil, models.DO_NOTHING, db_column='id_perfil')

    class Meta:
        managed = False
        db_table = 'pertence'
        verbose_name_plural = "pertencem"
        unique_together = (('id_servico', 'id_perfil'),)

    def __str__(self):
        return f'id_servico: {self.id_servico}, id_perfil: {self.id_perfil}' 

class Pessoa(models.Model):
    id_pessoa = models.IntegerField(primary_key=True)
    cpf = models.CharField(unique=True, max_length=11)
    nome = models.CharField(max_length=255)
    endereco = models.CharField(max_length=255)
    data_de_nascimento = models.DateField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'pessoa'
    
    def __str__(self):
        return f'cpf: {self.cpf}'


class Possui(models.Model):
    id_usuario = models.ForeignKey('Usuario', models.DO_NOTHING, db_column='id_usuario', primary_key=True)
    id_perfil = models.ForeignKey(Perfil, models.DO_NOTHING, db_column='id_perfil')

    class Meta:
        managed = False
        db_table = 'possui'
        verbose_name_plural = "possuem"
        unique_together = (('id_usuario', 'id_perfil'),)
    
    def __str__(self):
        return f'id_usuario: {self.id_usuario}, id_perfil: {self.id_perfil}'


class Realiza(models.Model):
    id_paciente = models.ForeignKey(Paciente, models.DO_NOTHING, db_column='id_paciente')
    id_exame = models.ForeignKey(Exame, models.DO_NOTHING, db_column='id_exame')
    codigo_amostra = models.CharField(max_length=255, blank=True, null=True)
    data_de_solicitacao = models.DateTimeField()
    data_de_realizacao = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'realiza'
        verbose_name_plural = "realizam"
        unique_together = (('id_paciente', 'id_exame', 'data_de_realizacao'),)
    
    def __str__(self):
        return f'id_paciente: {self.id_paciente}, id_exame: {self.id_exame}'

class Requisita(models.Model):
    id_usuario = models.ForeignKey('Usuario', models.DO_NOTHING, db_column='id_usuario')
    id_servico = models.ForeignKey('Servico', models.DO_NOTHING, db_column='id_servico')
    data_de_requisicao = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'requisita'
        verbose_name_plural = "requisitam"

    def __str__(self):
        return f'id_usuario: {self.id_usuario}, id_servico: {self.id_servico}'


class Servico(models.Model):
    id_servico = models.IntegerField(primary_key=True)
    nome = models.CharField(max_length=255)
    classe = models.CharField(max_length=255)

    exames = models.ManyToManyField('example.Exame', through='Gerencia')
    perfis = models.ManyToManyField('example.Perfil', through='Pertence')

    class Meta:
        managed = False
        db_table = 'servico'
        unique_together = (('nome', 'classe'),)

    def __str__(self):
        return f'nome: {self.nome}'


class Tutelamento(models.Model):
    id_usuario_tutelado = models.ForeignKey('Usuario', models.DO_NOTHING, db_column='id_usuario_tutelado', related_name='tutelado')
    id_tutor = models.ForeignKey('Usuario', models.DO_NOTHING, db_column='id_tutor')
    id_servico = models.ForeignKey(Servico, models.DO_NOTHING, db_column='id_servico')
    id_perfil = models.ForeignKey(Perfil, models.DO_NOTHING, db_column='id_perfil')
    data_de_inicio = models.DateField()
    data_de_termino = models.DateField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tutelamento'
        unique_together = (('id_usuario_tutelado', 'id_tutor', 'id_servico', 'id_perfil'),)

    def __str__(self):
        return f'id_usuario_tutelado: {self.id_usuario_tutelado}, id_tutor: {self.id_tutor}'

class Usuario(models.Model):
    id_usuario = models.IntegerField(primary_key=True)
    area_de_pesquisa = models.CharField(max_length=255, blank=True, null=True)
    instituicao = models.CharField(max_length=255, blank=True, null=True)
    login = models.CharField(unique=True, max_length=255)
    senha = models.CharField(max_length=255)
    id_tutor = models.ForeignKey('self', models.DO_NOTHING, db_column='id_tutor', blank=True, null=True)
    id_pessoa = models.ForeignKey(Pessoa, models.DO_NOTHING, db_column='id_pessoa')

    perfis = models.ManyToManyField(Perfil, through='Possui')

    class Meta:
        managed = False
        db_table = 'usuario'
    
    def __str__(self):
        return f'login: {self.login}'
