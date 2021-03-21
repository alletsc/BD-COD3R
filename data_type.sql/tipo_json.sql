use tipos_dados;

create table aluno (
    matricula char(10) NOT NULL,
    nome VARCHAR(120) NOT NULL,
    nome_social varchar(80),
    semestre TINYINT,
    creditos_cursados SMALLINT,
    CR decimal (4, 2),
    data_ingresso date not null DEFAULT (CURRENT_DATE),
    data_conclusao date,
    Periodo enum('Noturno', 'Diurno') not null,
    areas_interesse
    set
        ('Python', 'SQL', 'Java', 'R', 'BigData'),
        sumario_disciplinas json
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
        '{
            "semestre": [
                {
                    "numero": 1,
                    "disciplinas": [
                        {
                            "nome": "Calculo",
                            "mediaFinal": 7.9
                        },
                        {
                            "nome": "Algoritmo",
                            "mediaFinal": 9.3
                        }
                    ]
                }
            ]
        }
        '
    );