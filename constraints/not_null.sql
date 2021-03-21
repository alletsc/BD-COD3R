use CONSTRAINTS;

drop table if exists departamento;

create table if not EXISTS departamento (
    id int not null,
    nome varchar(60) not NULL,
    localizacao varchar(80) NULL
);

insert into
    departamento
VALUES
    (1, 'Gerencia TI', 'Terceiro andar SL310');

insert into
    departamento
VALUES
    (2, 'RH', 'Terceiro andar SL311');

SELECT
    *
FROM
    departamento;