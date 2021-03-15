use starwars;

Select
    *
from
    personagem;

-- PARA DESABILITAR E ALTERAR TUDO:
-- SET SQL_SAFE_UPDATES = 0; APENAS NO WORKBENCH
--update personagem set nome = 'Luke Skywalker' where id = 1;
update
    personagem
set
    id = 500
where
    id = 1
limit
    1;