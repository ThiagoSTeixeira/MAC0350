from django.db import models

class Perfil(models.Model):
    codigo = models.CharField(max_length=255)
    tipo = models.CharField(max_length=255)

    def __str__(self):
        return self.codigo +','+ self.tipo
    
class Usuario(models.Model):
    cpf = models.CharField(max_length=11)
    nome = models.CharField(max_length=255)
    area_de_pesquisa = models.CharField(max_length=255, blank=True, null=True)
    instituicao = models.CharField(max_length=255, blank=True, null=True)
    data_de_nascimento = models.DateField('data de nascimento')
    login = models.CharField(max_length=255)
    senha = models.CharField(max_length=255)
    cpf_tutor = models.ForeignKey("self", on_delete=models.PROTECT, null=True, blank=True)
    # Esse campo não aparece nas tabelas do bd. Utilizado somente para compatibilidade com a criacao
    #de objetos
    perfis = models.ManyToManyField(Perfil, through='Usuario_Possui_Perfil')
    
    class Meta:
        constraints = [
                models.UniqueConstraint(fields=['login'], name='unique_login')
                ]

    def __str__(self):
        return self.nome


#relacionamento Possui
class Usuario_Possui_Perfil(models.Model):
    usuario = models.ForeignKey(Usuario, on_delete=models.PROTECT)
    perfil = models.ForeignKey(Perfil, on_delete=models.PROTECT)
    
    class Meta:
        constraints = [
                models.UniqueConstraint(fields=['usuario', 'perfil'], name='unique_usuario_perfil')
                ]


