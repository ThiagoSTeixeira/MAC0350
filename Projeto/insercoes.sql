INSER
INTO public.tutelamento
(id_usuario_tutelado, id_tutor, id_servico, id_perfil, data_de_inicio, data_de_termino)
VALUES
(3, 2, )
)
--/////////////////////////////////////////////////////////////////////////////////////////////////////////////

INSERT INTO public.paciente
    (
    id_paciente, cpf, nome, endereco, nascimento)
VALUES(1, '62961657903', 'José Alves', 'Rua Benedito Julião Machado 1087', '26-06-1996')

INSERT INTO public.paciente
    (
    id_paciente, cpf, nome, endereco, nascimento)
VALUES(2, '84825497829', 'Manuela Correia', 'Rua Irmã Teresilda Steffen 1165', '27-05-2003')


INSERT INTO public.paciente
    (
    id_paciente, cpf, nome, endereco, nascimento)
VALUES(3, '91608987558', 'Felipe Fernandes', 'Rua Marcos Evangelista Vilela 1258', '04-11-1996')


INSERT INTO public.paciente
    (
    id_paciente, cpf, nome, endereco, nascimento)
VALUES(4, '51399325205', 'Erick Rodrigues', 'Rua Irmã Teresilda Steffen 1165', '03-03-1920')


INSERT INTO public.paciente
    (
    id_paciente, cpf, nome, endereco, nascimento)
VALUES(5, '69559704370', 'Camila Ribeiro', 'Rua Juvêncio de Menezes 1518', '20-01-2018')


INSERT INTO public.paciente
    (
    id_paciente, cpf, nome, endereco, nascimento)
VALUES(6, '11327890950', 'Thaís Oliveira', 'Avenida Porto Alegre 1475', '30-03-1990')


INSERT INTO public.paciente
    (
    id_paciente, cpf, nome, endereco, nascimento)
VALUES(7, '12099398780', 'Vitor Goncalves', 'Quadra QNN 36 Conjunto A 994', '30-01-1997')


INSERT INTO public.paciente
    (
    id_paciente, cpf, nome, endereco, nascimento)
VALUES(8, '25666266268', 'Gabriel Carvalho', 'Rua Doutor Cecílio Monza 1903', '03-04-1949')


INSERT INTO public.paciente
    (
    id_paciente, cpf, nome, endereco, nascimento)
VALUES(9, '86011419275', 'Ryan Rodrigues', 'Rua Junqueirópolis 1033', '25-08-1946')


INSERT INTO public.paciente
    (
    id_paciente, cpf, nome, endereco, nascimento)
VALUES(10, '43356416723', 'Nicolash Gomes', 'Avenida Farias 249', '06-10-1974')


--//////////////////////////////////////////////////////////////////////////////////////////////////////
INSERT INTO public.id_exame
    (
    id_exame, tipo, virus)
VALUES(1, 'PCR', 'Influenza')


INSERT INTO public.id_exame
    (
    id_exame, tipo, virus)
VALUES(2, 'anticorpos', 'COVID-19')


INSERT INTO public.id_exame
    (
    id_exame, tipo, virus)
VALUES(3, 'PCR', 'H1N1')


INSERT INTO public.id_exame
    (
    id_exame, tipo, virus)
VALUES(4, 'PCR', 'HIV')


INSERT INTO public.id_exame
    (
    id_exame, tipo, virus)
VALUES(5, 'PCR', 'COVID-19')


INSERT INTO public.id_exame
    (
    id_exame, tipo, virus)
VALUES(6, 'anticorpos', 'Influenza')


INSERT INTO public.id_exame
    (
    id_exame, tipo, virus)
VALUES(7, 'anticorpos', 'HIV')


INSERT INTO public.id_exame
    (
    id_exame, tipo, virus)
VALUES(8, 'anticorpos', 'H1N1')

--//////////////////////////////////////////////////////////////////////////////////////////////////////
INSERT INTO public.amostra
    (
    id_paciente, id_exame, codigo_amostra, metodo_de_coleta, material)
VALUES(6, 1, 2550639, 'sangue', '')
)

-- ///////////////////////////////////////////////////////////////////////////
-- table usuario
INSERT INTO public.usuario
    (id_usuario, cpf, nome, area_de_pesquisa, instituicao, data_de_nascimento, login, senha)
VALUES(1, '01234567890', 'João Pereira', 'Computação', 'USP', '2000-01-01', 'joao_pereira', '123');

INSERT INTO public.usuario
    (id_usuario, cpf, nome, area_de_pesquisa, instituicao, data_de_nascimento, login, senha)
VALUES(2, '73861875136', 'Erick Gomes', 'Física', 'USP', '1914-07-14', 'erick_gomes', '123');

INSERT INTO public.usuario
    (id_usuario, cpf, nome, area_de_pesquisa, instituicao, data_de_nascimento, login, senha, id_tutor)
VALUES(3, '31097899258', 'Gabrielle Souza', 'Biologia', 'Unicamp', '1941-09-12', 'gabrielle_souza', '123', 2);

INSERT INTO public.usuario
    (id_usuario, cpf, nome, area_de_pesquisa, instituicao, data_de_nascimento, login, senha, id_tutor)
VALUES(4, '21583710510', 'Rita Fisher', 'Computação', 'USP', '1945-09-04', 'rita_fisher', '123', 2);

INSERT INTO public.usuario
    (id_usuario, cpf, nome, area_de_pesquisa, instituicao, data_de_nascimento, login, senha)
VALUES(5, '45481536602', 'Bruno Castro', 'Biologia', 'Unesp', '1952-04-17', 'bruno_castro', '123');

INSERT INTO public.usuario
    (id_usuario, cpf, nome, area_de_pesquisa, instituicao, data_de_nascimento, login, senha, id_tutor)
VALUES(6, '14285286480', 'Guilherme Ribeiro', 'Física', 'Unicamp', '1934-06-05', 'guilherme_ribeiro', '123', 5);

INSERT INTO public.usuario
    (id_usuario, cpf, nome, area_de_pesquisa, instituicao, data_de_nascimento, login, senha, id_tutor)
VALUES(7, '19408236049', 'Julian Rocha', 'Computação', 'Unesp', '1985-08-03', 'julian_rocha', '123', 6);

INSERT INTO public.usuario
    (id_usuario, cpf, nome, area_de_pesquisa, instituicao, data_de_nascimento, login, senha)
VALUES(8, '90386479495', 'Nicole Almeida', 'Física', 'USP', '1938-08-28', 'nicole_almeida', '123');

INSERT INTO public.usuario
    (id_usuario, cpf, nome, area_de_pesquisa, instituicao, data_de_nascimento, login, senha)
VALUES(9, '67538866438', 'Rene Bishop', 'Biologia', 'Unicamp', '1936-06-26', 'rene_bishop', '123');

INSERT INTO public.usuario
    (id_usuario, cpf, nome, area_de_pesquisa, instituicao, data_de_nascimento, login, senha)
VALUES(10, '04409990903', 'Renan Souza', 'Computação', 'Unesp', '1963-11-25', 'renan_souza', '123');