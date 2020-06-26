# MAC0350- Etapa 02

## Integrantes

* Édio Cerati Neto - NUSP 9762678
* Thiago Santos Teixeira - NUSP 10736987

### 00 - Alterações no modelo passado como gabarito da Etapa 01

* Como foi solicitado um log para cada requisição de um serviço por um dado usuário, bem como a timestamp de quando ocorreu tal requisição, criamos um relacionamento "requisita" entre serviço e usuário, redesenhando o modelo, entregue em `00-remodelagem.pdf`

### 01 - Alteração do Modelo Físico

* A partir do modelo físico fornecido como base, criamos a nova tabela "requisita" em SQL
* Para gerar todo o modelo físico utilizado em nosso projeto, pode ser executado o script presente em `01-modeloFisico.sql`

### 02 - Povoar o banco de dados

* Para povoar o banco de dados criado com o script anterior, pode ser executado o script em `02-insercoes.sql`
* Insere dados no banco de dados convincentes e pertinentes à usabilidade pretendida, permitindo as posteriores consultas

### 03 - Consultas pedidas no item 04 do enunciado

* As consultas pedidas foram implementadas em `03-consultas.sql`
* Tal arquivo não tem caráter de "script" ou seja, executá-lo irá retornar apenas a consulta 4.5, portanto para testá-las pode-se copiar a consulta correspondente e colá-la no Query Editor do PgAdmin4

### Deletar todas as tabelas atuais

* O banco de dados encontra-se povoado, para reiniciá-lo pode-se deletar todas as tabelas com:
  * `DROP TABLE amostra, exame, gerencia, paciente, perfil, pertence, possui, realiza, requisita, servico, tutelamento, usuario CASCADE;`
* Depois, pode-se seguir os passos acima novamente para povoá-lo e fazer consultas