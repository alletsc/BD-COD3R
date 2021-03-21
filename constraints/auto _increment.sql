use CONSTRAINTS;

drop table if exists departamento;

create table if not exists departamento (
    id int primary key auto_increment,
    nome varchar(60) not NULL,
    localizacao varchar(80) NULL,
    funcionarios int not null check (funcionarios >= 0)
);

insert into
    departamento (nome, localizacao, funcionarios)
VALUES
    ('Gerencia TI', 'Terceiro andar SL310', 7);

insert into
    departamento (nome, localizacao, funcionarios)
VALUES
    ('RH', 'Terceiro andar SL311', 3);

insert INTO
    departamento (id, nome, localizacao, funcionarios)
VALUES
    (100, 'Financeiro', 'Quarto andar SL401', 0);

insert INTO
    departamento (nome, localizacao, funcionarios)
VALUES
    ('Terecirização', 'Quarto andar SL402', 1);

SELECT
    *
FROM
    departamento;