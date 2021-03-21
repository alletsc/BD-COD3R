-- Check para evitar valores negativos
-- Para consultar versão
show variables like '%version%';

use CONSTRAINTS;

drop table if exists departamento;

create table departamento (
    id int primary key auto_increment,
    nome varchar(60) not NULL,
    localizacao varchar(80) NULL,
    funcionarios int not null check (funcionarios >= 0)
);

insert into
    departamento (nome, localizacao, funcionarios)
VALUES
    ('Gerencia TI', 'Terceiro andar SL310', 0);

insert into
    departamento (nome, localizacao, funcionarios)
VALUES
    ('RH', 'Terceiro andar SL311', 7);

insert INTO
    departamento (id, nome, localizacao, funcionarios)
VALUES
    (100, 'Financeiro', 'Quarto andar SL401', 2);

insert INTO
    departamento (nome, localizacao, funcionarios)
VALUES
    ('Terceirização', 'Quarto andar SL402', 3);

SELECT
    *
FROM
    departamento;