from django.contrib import admin
from .models import Usuario, Perfil, Servico, Exame, Possui, Amostra, Gerencia, Paciente, Pertence, Pessoa

class PerfilInline(admin.TabularInline):
    model = Possui
    extra = 1

class UsuarioInLine(admin.TabularInline):
    model = Possui
    extra = 1

class ServicoInLine(admin.TabularInline):
    model = Gerencia
    extra = 1

class ExameInLine(admin.TabularInline):
    model = Gerencia
    extra = 1

class PertencePerfilInline(admin.TabularInline):
    model = Pertence
    extra = 1

class PertenceServicoInLine(admin.TabularInline):
    model = Pertence
    extra = 1

class PessoaEhUsuarioInLine(admin.TabularInline):
    model = Usuario
    extra = 1

class UsuarioAdmin(admin.ModelAdmin):
    inlines = (PerfilInline,)

class PerfilAdmin(admin.ModelAdmin):
    inlines = (UsuarioInLine, PertenceServicoInLine,)

class ServicoAdmin(admin.ModelAdmin):
    inlines = (ExameInLine, PertencePerfilInline,)

class ExameAdmin(admin.ModelAdmin):
    inlines = (ServicoInLine,) 

class PessoaAdmin(admin.ModelAdmin):
    inlines = (PessoaEhUsuarioInLine,)

admin.site.register(Usuario, UsuarioAdmin)
admin.site.register(Perfil, PerfilAdmin)
admin.site.register(Servico, ServicoAdmin)
admin.site.register(Exame, ExameAdmin)
admin.site.register(Amostra)
admin.site.register(Paciente)
admin.site.register(Pessoa, PessoaAdmin)