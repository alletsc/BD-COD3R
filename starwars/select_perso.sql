use starwars;

SELEct
    nome
from
    personagem
where
    id = '1';

select
    id as codigo,
    nome,
    altura * 3 as triplo
from
    personagem
where
    binary nome = 'Chewbacca';

---Select com where
SELECT from personagem where 0;
SELECT from personagem where 1;
SELECT from personagem where true;
SELECT from personagem where false;
