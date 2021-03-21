-- Check para evitar valores negativos
-- Para consultar versão
-- show variables like '%version%';
use CONSTRAINTS;

drop table if exists departamento;

drop table if exists funcionario;

create table departamento (
    id int primary key auto_increment,
    nome varchar(60) not NULL,
    localizacao varchar(80) NULL,
    funcionarios int not null check (funcionarios >= 0)
);

create table funcionario (
    id int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(60) not null,
    dep_id int,
    FOREIGN KEY (dep_id) REFERENCES departamento(id)
);

INSERT INTO
    FUNCIONARIO (nome, dep_id)
VALUES
('Rafael', 2);

INSERT INTO
    FUNCIONARIO (nome, dep_id)
VALUES
('Bruno', 2);

INSERT INTO
    FUNCIONARIO (nome, dep_id)
VALUES
('Carla', 1);

INSERT INTO
    FUNCIONARIO (nome, dep_id)
VALUES
('Andrea', 100);

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

SELECT
    *
from
    funcionario;

