-- Objetivo: Verificar se existe sazonalidade, algum trimestre concentra mais reclamações? 
-- Fonte: Tabela de reclamações 
-- Regra: Calcular a média de reclamações por trimestre


SELECT 
  trimestre,
  ROUND(AVG(indice) , 2) AS indice_medio,
  ROUND(AVG(reclamacoes_procedentes) , 0) AS media_procedentes,
  ROUND(AVG(reclamacoes_total) , 0) AS media_total, 
  COUNT (DISTINCT ano) AS anos_analisados
FROM reclamacoes_bc.reclamacoes
WHERE indice IS NOT NULL 
  AND ano BETWEEN 2017 AND 2023
GROUP BY trimestre
ORDER BY trimestre 