-- Objetivo: Identificar se as instituições que possuem mais clientes automaticamente significam mais problemas, ou se o tamanho traz mais estrutura para lidar com eles. 
-- Fonte: Tabela Reclamações
-- Regra Aplicada: Comparando por porte: Volume absoluto vs índice proporcional


SELECT
  instituicao,
  ROUND(AVG(total_clientes) , 0) AS media_clientes, 
  ROUND(AVG(reclamacoes_procedentes) , 0) AS media_procedentes,
  ROUND(AVG(indice) , 2) AS indice_medio
FROM reclamacoes_bc.reclamacoes
WHERE indice IS NOT NULL
  AND ano BETWEEN 2017 AND 2023 
GROUP BY instituicao
HAVING AVG (total_clientes) >= 4000000
  AND COUNT (*) >= 8
ORDER BY media_clientes DESC
LIMIT 15 