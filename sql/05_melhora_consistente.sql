-- Objetivo: Descobrir se alguma instituição apresentou melhora consistente ao longo dos trimestres? 
-- Fonte: Tabelas Reclamações e Irregularidades
-- Regra: Comparando o índice médio do primeiro e último biênio por instituição

WITH inicio AS (
  SELECT
    instituicao,
    ROUND(AVG(indice) , 2) AS indice_inicio
  FROM reclamacoes_bc.reclamacoes
  WHERE ano BETWEEN 2017 AND 2018
    AND indice IS NOT NULL
  GROUP BY instituicao
), 
fim AS (
    SELECT
      instituicao,
      ROUND(AVG(indice) , 2) AS indice_fim
    FROM reclamacoes_bc.reclamacoes
    WHERE ano BETWEEN 2022 AND 2023
      AND indice IS NOT NULL
    GROUP BY instituicao
)
SELECT
  i.instituicao,
  i.indice_inicio,
  f.indice_fim,
  ROUND(f.indice_fim - i.indice_inicio, 2) AS variacao,
  ROUND((f.indice_fim - i.indice_inicio) / i.indice_inicio * 100, 2) AS variacao_pct
FROM inicio i 
JOIN fim f ON i.instituicao = f.instituicao
ORDER BY variacao ASC
LIMIT 10 