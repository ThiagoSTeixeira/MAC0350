-- 4.1) Liste todos os exames realizados, com seus respectivos tipos, bem como os seus
-- usuários com suas respectivas datas de solicitação e execução.
SELECT exame.id_exame, tipo, virus, nome, data_de_solicitacao, data_de_realizacao
FROM public.exame, public.paciente, public.realiza
WHERE exame.id_exame = realiza.id_exame AND paciente.id_paciente = realiza.id_paciente;

-- 4.2) Liste os 5 exames realizados com maior eficiência (diferença entre data de execução e
-- data de solicitação).
SELECT *
FROM public.realiza
ORDER BY data_de_realizacao - data_de_solicitacao ASC LIMIT 5

--4.3) Liste os serviços que podem ser utilizados pelos os usuários
SELECT usuario.id_usuario, login, codigo, tipo, servico.nome
FROM public.usuario, public.possui, public.perfil, public.servico
, public.pertence
WHERE usuario.id_usuario = possui.id_usuario AND perfil.id_perfil = possui.id_perfil 
	AND pertence.id_perfil = perfil.id_perfil AND pertence.id_servico = servico.id_servico;

--4.4) Liste os serviços que podem ser utilizados por usuários tutelados (dependentes).
SELECT tutelamento.id_usuario_tutelado, usuario.login, servico.nome
FROM public.tutelamento, public.usuario, public.servico
WHERE tutelamento.id_usuario_tutelado = usuario.id_usuario AND tutelamento.id_servico = servico.id_servico;

--4.5) Liste em ordem crescente o total de serviços utilizados agrupados pelos tipos de
--serviços disponíveis e pelo perfil dos usuários.
SELECT servico.nome, COUNT(*) totalCount
FROM public.requisita, public.servico
WHERE requisita.id_servico = servico.id_servico
GROUP BY servico.nome;