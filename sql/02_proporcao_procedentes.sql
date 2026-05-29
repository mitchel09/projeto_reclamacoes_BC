-- Objetivo: Calcular a Proporção de reclamações procedentes sobre o total
-- Fonte: Tabela de reclamações 

SELECT 
  instituicao,
  ROUND(AVG(reclamacoes_procedentes), 0) AS media_procedentes, 
  ROUND(AVG(reclamacoes_total), 0) AS media_total,
  ROUND(AVG(reclamacoes_procedentes) / AVG(reclamacoes_total) * 100, 2) AS pct_procedentes,
  COUNT (*) AS trimestres_analisados
FROM reclamacoes_bc.reclamacoes
WHERE reclamacoes_total > 0
GROUP BY instituicao
HAVING AVG (total_clientes) >= 4000000
  AND COUNT (*) >= 8
ORDER BY pct_procedentes ASC
LIMIT 10
