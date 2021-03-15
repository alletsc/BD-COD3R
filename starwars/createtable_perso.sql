CREATE DATABASE if not exists STARWARS;

use starwars;

create table personagem (
    id int,
    nome varchar(120),
    altura decimal(4, 2),
    destaque boolean,
    nascimento date
);

insert into
    personagem (id, nome, altura, destaque, nascimento)
values
    (1, 'Luke', 1.75, true, '3091-10-25');