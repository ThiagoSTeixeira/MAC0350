# MAC0350- Etapa 03

## Integrantes

* Édio Cerati Neto - NUSP 9762678
* Thiago Santos Teixeira - NUSP 10736987

###  Alterações no modelo da Etapa 02:

* Como foi solicitada a introdução do conceito de Pessoa no enunciado (generalizando Usuário e Paciente), adaptamos o nosso modelo conceitual e lógico (entregues em ` 00-modelagem.pdf`), e o físico (entregue em `01-modeloFisico.sql`) bem como as inserções atualizadas (disponíveis em `02-insercoes.sql`) .

### Criação da interface gráfica para CRUD:

* Foi utilizado o próprio Admin do Django, para fornecer as capacidades de inserção, atualização, eliminação e consultas simples.
* Pode ser acessado em `localhost:8000/admin`

### Consultas sofisticadas:

* Foram implementadas 5 consultas sofisticadas acessíveis em `localhost:8000/example/queryN`, sendo N um número de 1 a 5.
