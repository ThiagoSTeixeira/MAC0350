-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////
-- table paciente
INSERT INTO public.paciente
    (id_paciente, cpf, nome, endereco, nascimento)
VALUES(1, '62961657903', 'José Alves', 'Rua Benedito Julião Machado 1087', '1996-06-26');

INSERT INTO public.paciente
    (id_paciente, cpf, nome, endereco, nascimento)
VALUES(2, '84825497829', 'Manuela Correia', 'Rua Irmã Teresilda Steffen 1165', '2003-05-27');

INSERT INTO public.paciente
    (id_paciente, cpf, nome, endereco, nascimento)
VALUES(3, '91608987558', 'Felipe Fernandes', 'Rua Marcos Evangelista Vilela 1258', '1996-11-04');

INSERT INTO public.paciente
    (id_paciente, cpf, nome, endereco, nascimento)
VALUES(4, '51399325205', 'Erick Rodrigues', 'Rua Irmã Teresilda Steffen 1165', '1920-03-03');

INSERT INTO public.paciente
    (id_paciente, cpf, nome, endereco, nascimento)
VALUES(5, '69559704370', 'Camila Ribeiro', 'Rua Juvêncio de Menezes 1518', '2018-01-20');

INSERT INTO public.paciente
    (id_paciente, cpf, nome, endereco, nascimento)
VALUES(6, '11327890950', 'Thaís Oliveira', 'Avenida Porto Alegre 1475', '1990-03-30');

INSERT INTO public.paciente
    (id_paciente, cpf, nome, endereco, nascimento)
VALUES(7, '12099398780', 'Vitor Goncalves', 'Quadra QNN 36 Conjunto A 994', '1997-01-30');

INSERT INTO public.paciente
    (id_paciente, cpf, nome, endereco, nascimento)
VALUES(8, '25666266268', 'Gabriel Carvalho', 'Rua Doutor Cecílio Monza 1903', '1949-04-03');

INSERT INTO public.paciente
    (id_paciente, cpf, nome, endereco, nascimento)
VALUES(9, '86011419275', 'Ryan Rodrigues', 'Rua Junqueirópolis 1033', '1946-08-25');

INSERT INTO public.paciente
    (id_paciente, cpf, nome, endereco, nascimento)
VALUES(10, '43356416723', 'Nicole Gomes', 'Avenida Farias 249', '1974-10-06');

--//////////////////////////////////////////////////////////////////////////////////////////////////////
-- table perfil
INSERT INTO public.perfil
    (id_perfil, codigo, tipo)
VALUES(1, 'A', 'Pesquisador');

INSERT INTO public.perfil
    (id_perfil, codigo, tipo)
VALUES(2, 'B', 'Aluno');

INSERT INTO public.perfil
    (id_perfil, codigo, tipo)
VALUES(3, 'C', 'Funcionário');

INSERT INTO public.perfil
    (id_perfil, codigo, tipo)
VALUES(4, 'D', 'Administrador');

INSERT INTO public.perfil
    (id_perfil, codigo, tipo)
VALUES(5, 'E', 'Usuário Comum');

INSERT INTO public.perfil
    (id_perfil, codigo, tipo)
VALUES(6, 'F', 'Usuário Eventual');

--//////////////////////////////////////////////////////////////////////////////////////////////////////
-- table exame
INSERT INTO public.exame
    (id_exame, tipo, virus)
VALUES(1, 'PCR', 'Influenza');

INSERT INTO public.exame
    (id_exame, tipo, virus)
VALUES(2, 'anticorpos', 'COVID-19');

INSERT INTO public.exame
    (id_exame, tipo, virus)
VALUES(3, 'PCR', 'H1N1');

INSERT INTO public.exame
    (id_exame, tipo, virus)
VALUES(4, 'PCR', 'HIV');

INSERT INTO public.exame
    (id_exame, tipo, virus)
VALUES(5, 'PCR', 'COVID-19');

INSERT INTO public.exame
    (id_exame, tipo, virus)
VALUES(6, 'anticorpos', 'Influenza');

INSERT INTO public.exame
    (id_exame, tipo, virus)
VALUES(7, 'anticorpos', 'HIV');

INSERT INTO public.exame
    (id_exame, tipo, virus)
VALUES(8, 'anticorpos', 'H1N1');

-- /////////////////////////////////////////////////////////////////////////////
-- table amostra
INSERT INTO public.amostra
    (id_paciente, id_exame, codigo_amostra, metodo_de_coleta, material)
VALUES(1, 8, '08A01', 'raspado de nasofaringe', 'secreção nasofaringe');

INSERT INTO public.amostra
    (id_paciente, id_exame, codigo_amostra, metodo_de_coleta, material)
VALUES(2, 7, '07A02', 'raspagem do colo do útero', 'células uterinas');

INSERT INTO public.amostra
    (id_paciente, id_exame, codigo_amostra, metodo_de_coleta, material)
VALUES(3, 6, '06A03', 'coleta de sangue', 'sangue');

INSERT INTO public.amostra
    (id_paciente, id_exame, codigo_amostra, metodo_de_coleta, material)
VALUES(4, 5, '05A04', 'raspagem de nasofaringe', 'secreção nasofaringe');

INSERT INTO public.amostra
    (id_paciente, id_exame, codigo_amostra, metodo_de_coleta, material)
VALUES(5, 4, '04A05', 'raspagem do colo do útero', 'células uterinas');

INSERT INTO public.amostra
    (id_paciente, id_exame, codigo_amostra, metodo_de_coleta, material)
VALUES(6, 3, '06A03', 'coleta de sangue', 'sangue');

INSERT INTO public.amostra
    (id_paciente, id_exame, codigo_amostra, metodo_de_coleta, material)
VALUES(7, 2, '02A07', 'coleta de sangue', 'sangue');

INSERT INTO public.amostra
    (id_paciente, id_exame, codigo_amostra, metodo_de_coleta, material)
VALUES(8, 1, '01A08', 'raspagem de nasofaringe', 'secreção nasofaringe');

INSERT INTO public.amostra
    (id_paciente, id_exame, codigo_amostra, metodo_de_coleta, material)
VALUES(9, 3, '03A09', 'coleta de sangue', 'sangue');

INSERT INTO public.amostra
    (id_paciente, id_exame, codigo_amostra, metodo_de_coleta, material)
VALUES(10, 4, '10A04', 'raspagem do colo do útero', 'células uterínas');

INSERT INTO public.amostra
    (id_paciente, id_exame, codigo_amostra, metodo_de_coleta, material)
VALUES(1, 6, '06A01', 'coleta de sangue', 'sangue');

INSERT INTO public.amostra
    (id_paciente, id_exame, codigo_amostra, metodo_de_coleta, material)
VALUES(2, 2, '02A02', 'coleta de sangue', 'sangue');

INSERT INTO public.amostra
    (id_paciente, id_exame, codigo_amostra, metodo_de_coleta, material)
VALUES(4, 6, '06A04', 'coleta de sangue', 'sangue');

INSERT INTO public.amostra
    (id_paciente, id_exame, codigo_amostra, metodo_de_coleta, material)
VALUES(9, 5, '05A09', 'raspagem de nasofaringe', 'secreção nasofaringe');

INSERT INTO public.amostra
    (id_paciente, id_exame, codigo_amostra, metodo_de_coleta, material)
VALUES(2, 1, '01A02', 'raspagem de nasofaringe', 'secreção nasofaringe');

-- ///////////////////////////////////////////////////////////////////////////
-- table possui
INSERT INTO public.possui
    (id_usuario, id_perfil)
VALUES(1, 3);

INSERT INTO public.possui
    (id_usuario, id_perfil)
VALUES(1, 6);

INSERT INTO public.possui
    (id_usuario, id_perfil)
VALUES(2, 1);

INSERT INTO public.possui
    (id_usuario, id_perfil)
VALUES(3, 2);

INSERT INTO public.possui
    (id_usuario, id_perfil)
VALUES(4, 2);

INSERT INTO public.possui
    (id_usuario, id_perfil)
VALUES(5, 4);

INSERT INTO public.possui
    (id_usuario, id_perfil)
VALUES(6, 1);

INSERT INTO public.possui
    (id_usuario, id_perfil)
VALUES(7, 5);

INSERT INTO public.possui
    (id_usuario, id_perfil)
VALUES(8, 6);

INSERT INTO public.possui
    (id_usuario, id_perfil)
VALUES(9, 3);

INSERT INTO public.possui
    (id_usuario, id_perfil)
VALUES(10, 4);

-- ///////////////////////////////////////////////////////////////////////////
-- table realiza
INSERT INTO public.realiza
    (id_paciente, id_exame, codigo_amostra, data_de_solicitacao, data_de_realizacao)
VALUES(1, 8, '08A01', '2020-01-22 12:48:33', '2020-02-01 15:56:50');

INSERT INTO public.realiza
    (id_paciente, id_exame, codigo_amostra, data_de_solicitacao, data_de_realizacao)
VALUES(2, 7, '07A02', '2020-02-26 08:49:15', '2020-03-04 12:46:16');

INSERT INTO public.realiza
    (id_paciente, id_exame, codigo_amostra, data_de_solicitacao, data_de_realizacao)
VALUES(3, 6, '06A03', '2020-02-25 17:04:20', '2020-03-01 09:56:16');

INSERT INTO public.realiza
    (id_paciente, id_exame, codigo_amostra, data_de_solicitacao, data_de_realizacao)
VALUES(4, 5, '05A04', '2020-01-28 12:19:07', '2020-02-07 10:37:55');

INSERT INTO public.realiza
    (id_paciente, id_exame, codigo_amostra, data_de_solicitacao, data_de_realizacao)
VALUES(5, 4, '04A05', '2020-04-08 12:24:01', '2020-04-11 10:13:29');

INSERT INTO public.realiza
    (id_paciente, id_exame, codigo_amostra, data_de_solicitacao, data_de_realizacao)
VALUES(6, 3, '03A06', '2020-01-21 14:56:37', '2020-01-23 12:06:20');

INSERT INTO public.realiza
    (id_paciente, id_exame, codigo_amostra, data_de_solicitacao, data_de_realizacao)
VALUES(7, 2, '02A07', '2020-05-06 16:59:54', '2020-05-13 08:47:11');

INSERT INTO public.realiza
    (id_paciente, id_exame, codigo_amostra, data_de_solicitacao, data_de_realizacao)
VALUES(8, 1, '01A08', '2020-02-12 11:33:03', '2020-02-19 16:01:06');

INSERT INTO public.realiza
    (id_paciente, id_exame, codigo_amostra, data_de_solicitacao, data_de_realizacao)
VALUES(9, 6, '06A09', '2020-05-05 16:40:08', '2020-05-07 13:24:05');

INSERT INTO public.realiza
    (id_paciente, id_exame, codigo_amostra, data_de_solicitacao, data_de_realizacao)
VALUES(10, 5, '05A10', '2020-02-14 08:30:10', '2020-02-20 13:14:25');

INSERT INTO public.realiza
    (id_paciente, id_exame, codigo_amostra, data_de_solicitacao, data_de_realizacao)
VALUES(5, 6, '06A11', '2020-05-12 16:01:12', '2020-05-14 14:10:10');

INSERT INTO public.realiza
    (id_paciente, id_exame, codigo_amostra, data_de_solicitacao, data_de_realizacao)
VALUES(7, 6, '06A12', '2020-02-14 16:53:38', '2020-02-16 16:45:10');

INSERT INTO public.realiza
    (id_paciente, id_exame, codigo_amostra, data_de_solicitacao, data_de_realizacao)
VALUES(4, 6, '06A13', '2020-02-28 17:50:51', '2020-03-05 15:13:27');

INSERT INTO public.realiza
    (id_paciente, id_exame, codigo_amostra, data_de_solicitacao, data_de_realizacao)
VALUES(2, 6, '06A14', '2020-03-21 09:55:04', '2020-03-28 15:17:25');

INSERT INTO public.realiza
    (id_paciente, id_exame, codigo_amostra, data_de_solicitacao, data_de_realizacao)
VALUES(10, 5, '05A15', '2020-04-06 09:46:56', '2020-04-12 11:56:01');

-- ///////////////////////////////////////////////////////////////////////////
-- table tutelamento
INSERT INTO public.tutelamento
    (id_usuario_tutelado, id_tutor, id_servico, id_perfil, data_de_inicio, data_de_termino)
VALUES(3, 2, 1, 2, '2020-01-01', '2020-12-31');

INSERT INTO public.tutelamento
    (id_usuario_tutelado, id_tutor, id_servico, id_perfil, data_de_inicio, data_de_termino)
VALUES(4, 2, 1, 2, '2020-01-01', '2020-12-31');

INSERT INTO public.tutelamento
    (id_usuario_tutelado, id_tutor, id_servico, id_perfil, data_de_inicio)
VALUES(6, 5, 3, 1, '2002-05-30');

INSERT INTO public.tutelamento
    (id_usuario_tutelado, id_tutor, id_servico, id_perfil, data_de_inicio)
VALUES(7, 6, 1, 5, '2017-06-01');

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


-- ///////////////////////////////////////////////////////////////////////////
-- table SERVICO 
INSERT INTO public.servico
    (id_servico, nome, classe)
VALUES(1, 'Visualizar', 'visualização');

INSERT INTO public.servico
    (id_servico, nome, classe)
VALUES(2, 'Inserir', 'inserção');

INSERT INTO public.servico
    (id_servico, nome, classe)
VALUES(3, 'Alterar', 'alteração');

INSERT INTO public.servico
    (id_servico, nome, classe)
VALUES(4, 'Remover', 'remoção');

-- ///////////////////////////////////////////////////////////////////////////
-- table GERENCIA 
INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(1, 1);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(1, 2);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(1, 3);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(1, 4);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(1, 5);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(1, 6);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(1, 7);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(1, 8);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(2, 1);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(2, 2);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(2, 3);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(2, 4);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(2, 5);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(2, 6);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(2, 7);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(2, 8);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(3, 1);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(3, 2);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(3, 3);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(3, 4);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(3, 5);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(3, 6);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(3, 7);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(3, 8);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(4, 1);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(4, 2);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(4, 3);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(4, 4);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(4, 5);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(4, 6);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(4, 7);

INSERT INTO public.gerencia
    (id_servico, id_exame)
VALUES(4, 8);

-- ///////////////////////////////////////////////////////////////////////////
-- table pertence
INSERT INTO public.pertence
    (id_servico, id_perfil)
VALUES(1, 4);

INSERT INTO public.pertence
    (id_servico, id_perfil)
VALUES(2, 4);

INSERT INTO public.pertence
    (id_servico, id_perfil)
VALUES(3, 4);

INSERT INTO public.pertence
    (id_servico, id_perfil)
VALUES(4, 4);

INSERT INTO public.pertence
    (id_servico, id_perfil)
VALUES(1, 2);

INSERT INTO public.pertence
    (id_servico, id_perfil)
VALUES(1, 3);

INSERT INTO public.pertence
    (id_servico, id_perfil)
VALUES(2, 3);

INSERT INTO public.pertence
    (id_servico, id_perfil)
VALUES(1, 1);

INSERT INTO public.pertence
    (id_servico, id_perfil)
VALUES(2, 1);

INSERT INTO public.pertence
    (id_servico, id_perfil)
VALUES(3, 1);

INSERT INTO public.pertence
    (id_servico, id_perfil)
VALUES(4, 1);

INSERT INTO public.pertence
    (id_servico, id_perfil)
VALUES(1, 5);

INSERT INTO public.pertence
    (id_servico, id_perfil)
VALUES(1, 6);

-- ///////////////////////////////////////////////////////////////////////////
-- table requisita

INSERT INTO public.requisita
    (id_usuario, id_servico, data_de_requisicao)
VALUES(10 , 4, '2020-04-27 15:16:42');

INSERT INTO public.requisita
    (id_usuario, id_servico, data_de_requisicao)
VALUES(2 , 2, '2020-05-13 16:41:54');

INSERT INTO public.requisita
    (id_usuario, id_servico, data_de_requisicao)
VALUES(5 , 1, '2020-04-24 11:25:37');

INSERT INTO public.requisita
    (id_usuario, id_servico, data_de_requisicao)
VALUES(3 , 3, '2020-03-17 16:35:44');

INSERT INTO public.requisita
    (id_usuario, id_servico, data_de_requisicao)
VALUES(4 , 1, '2020-03-28 12:23:56');

INSERT INTO public.requisita
    (id_usuario, id_servico, data_de_requisicao)
VALUES(7 , 4, '2020-04-23 15:25:50');

INSERT INTO public.requisita
    (id_usuario, id_servico, data_de_requisicao)
VALUES(8 , 3, '2020-05-21 15:28:22');

INSERT INTO public.requisita
    (id_usuario, id_servico, data_de_requisicao)
VALUES(1 , 2, '2020-04-13 14:20:25');

INSERT INTO public.requisita
    (id_usuario, id_servico, data_de_requisicao)
VALUES(9 , 1, '2020-04-19 10:53:10');

INSERT INTO public.requisita
    (id_usuario, id_servico, data_de_requisicao)
VALUES(6 , 1, '2020-04-22 14:35:56');



