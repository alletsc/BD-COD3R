use ead;

drop table if exists curso;

create table curso (
    id int unsigned PRIMARY KEY auto_increment,
    nome varchar(120) not null,
    descricao varchar(4000),
    visivel boolean not null default 0,
    gratis boolean not null default 0,
    data_publicacao datetime,
    duracao int,
    nota decimal(3, 2) unsigned not null default 0,
    preco decimal(7, 2) unsigned not null default 0,
    CONSTRAINT chk_nota check(nota <= 5)
);

create table aula (
    id_aula int unsigned PRIMARY KEY auto_increment,
    nome varchar(120) not null,
    video_url varchar(1000),
    visivel boolean not null default 1,
    gratis boolean not null default 0,
    data_publicacao datetime,
    duracao int not null default 0,
    id_curso int unsigned not null,
    FOREIGN KEY (id_curso) references curso(id)
);
