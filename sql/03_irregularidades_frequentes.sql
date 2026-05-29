-- Objetivo: Descobrir quais são as 15 reclamações mais frequentes das instituições financeiras
-- Fonte: Tabela de Irregularidades 

SELECT
  irregularidade, 
  ROUND(SUM(reclamacoes_procedentes) , 0) AS total_procedentes,
  COUNT(DISTINCT instituicao) AS qnt_instituicoes,
  COUNT(DISTINCT ano) AS anos_com_ocorrencia
FROM reclamacoes_bc.irregularidades
WHERE reclamacoes_procedentes > 0 
GROUP BY irregularidade
ORDER BY total_procedentes DESC
LIMIT 15