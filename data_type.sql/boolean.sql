use tipos_dados;

create table aluno (
    matricula char(10) NOT NULL,
    nome VARCHAR(120) NOT NULL,
    nome_social varchar(80),
    semestre TINYINT,
    creditos_cursados SMALLINT,
    CR decimal (4, 2),
    data_ingresso date not null,
    data_conclusao date,
    Periodo enum('Noturno', 'Diurno') not null,
    areas_interesse
    set
        ('Python', 'SQL', 'Java', 'R', 'BigData'),
        bolsista boolean
);

insert into
    aluno
values
    (
        "202101",
        "Marlos Pinheiro Borges",
        "Marlin",
        3,
        56,
        8.7,
        '2021-02-12',
        NULL,
        'Diurno',
        'Python,BigData,R',
        TRUE
    );