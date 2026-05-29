-- Objetivo: descobrir o top 10 de instituições financeiras com maior índice médio de reclamações de 2017 a 2025
-- Fonte: Tabela de reclamações


SELECT
    instituicao,
    ROUND(AVG(indice),2) AS indice_medio,
    ROUND(AVG(reclamacoes_procedentes),0) AS media_reclamacoes,
    ROUND(AVG(total_clientes),0) AS media_clientes, 
    COUNT(*) AS trimestres_analisados
FROM reclamacoes_bc.reclamacoes
WHERE indice IS NOT NULL
GROUP BY instituicao
HAVING AVG (total_clientes) >= 4000000
    AND COUNT (*) >= 8
ORDER BY indice_medio DESC
LIMIT 10