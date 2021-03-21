use tipos_dados;

create table aluno (
    matricula char(10) NOT NULL,
    nome VARCHAR(120) NOT NULL,
    nome_social varchar(80)
);

insert into
    aluno
values
    (
        "202101",
        "Marlos Pinheiro Borges",
        "Marlin"
    );