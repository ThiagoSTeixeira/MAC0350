CREATE TABLE requisita
(
    id_usuario INT NOT NULL references usuario(id_usuario),
    id_servico INT NOT NULL references servico(id_servico),
    data_de_requisicao TIMESTAMP
);

ALTER TABLE public.realiza
    ADD data_de_solicitação TIMESTAMP NOT NULL;