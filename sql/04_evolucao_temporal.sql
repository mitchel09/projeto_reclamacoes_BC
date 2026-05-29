-- Objetivo: Evolução anual do índice médio e total de reclamações procedentes. 
-- Fonte: Tabela Reclamações

SELECT 
  ano,
  ROUND(AVG(indice) , 2) AS indice_medio,
  ROUND(AVG(reclamacoes_procedentes), 0) AS total_procedentes, 
  ROUND(AVG(reclamacoes_total) , 0) AS total_reclamacoes, 
  COUNT(DISTINCT instituicao) AS qtd_instituicoes
FROM reclamacoes_bc.reclamacoes
WHERE indice IS NOT NULL
GROUP BY ano
ORDER BY ano ASC
