use tipos_dados;

SELECT
    sumario_disciplinas
from
    aluno;

SELECT
    JSON_EXTRACT(
        sumario_disciplinas,
        "$.SEMESTRES[0].DISCIPLINAS[1]"
    )
FROM
    ALUNO;

SELECT
    *
FROM
    ALUNO
WHERE
    JSON_CONTAINS(sumario_disciplinas, '{"NOME": "CALCULO"}');