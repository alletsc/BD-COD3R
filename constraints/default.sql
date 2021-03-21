-- Check para evitar valores negativos
-- Para consultar versão
-- show variables like '%version%';
use CONSTRAINTS;

drop table if exists departamento;

drop table if exists empregado;

create table departamento (
    id int primary key auto_increment,
    nome varchar(60) not NULL,
    localizacao varchar(80) NULL,
    funcionarios int not null check (funcionarios >= 0)
);

create table empregado (
    id int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(60) not null,
    dep_id int,
        FOREIGN KEY (dep_id) REFERENCES departamento(id),
    salario decimal(7, 2) default 2000,
    estado_civil enum('solteiro' , 'divorciado', 'casado') default 'solteiro'
);

INSERT INTO
    empregado (nome, dep_id, salario)
VALUES
    ('Ruan', 2, 3000);

INSERT INTO
    empregado (nome, dep_id)
VALUES
    ('Bruno', 2);

INSERT INTO
    empregado (nome, dep_id, estado_civil)
VALUES
    ('Carla', 1, 'casado');

INSERT INTO
    empregado (nome, dep_id, estado_civil)
VALUES
    ('Andrea', 100, 'divorciado');

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
    empregado;