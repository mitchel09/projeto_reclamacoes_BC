-- Objetivo: Descobrir qual tipo de instituição Tradicional vs Digital recebe mais reclamações.
-- Fonte: Tabela Reclamações

SELECT
  CASE
      WHEN instituicao LIKE '%NUBANK%' THEN 'Digital'
      WHEN instituicao LIKE '%C6%' THEN 'Digital'
      WHEN instituicao LIKE '%INTER%' THEN 'Digital'
      WHEN instituicao LIKE '%NEON%' THEN 'Digital'
      WHEN instituicao LIKE '%ORIGINAL%' THEN 'Digital'
      WHEN instituicao LIKE '%PICPAY%' THEN 'Digital'
      WHEN instituicao LIKE '%PAGBANK%' OR instituicao LIKE '%PAGSEGURO%' THEN 'Digital'
      WHEN instituicao LIKE '%PAN%' THEN 'Digital'
      WHEN instituicao LIKE '%ITAU%' OR instituicao LIKE '%ITAÚ%' THEN 'Tradicional'
      WHEN instituicao LIKE '% BB %' OR instituicao LIKE '%BB (%' THEN 'Tradicional'
      WHEN instituicao LIKE '%CAIXA ECON%' THEN 'Tradicional'
      WHEN instituicao LIKE '%SANTANDER%' THEN 'Tradicional'
      WHEN instituicao LIKE '%BRADESCO%' THEN 'Tradicional'
      WHEN instituicao LIKE '%BMG%' THEN 'Tradicional'
      WHEN instituicao LIKE '%BANRISUL%' THEN 'Tradicional'
      WHEN instituicao LIKE '%SAFRA%' THEN 'Tradicional'
      ELSE 'Outros'
  END AS tipo_banco, 
  ROUND(AVG(indice) , 2) AS indice_medio,
  ROUND(AVG(reclamacoes_procedentes) , 0) AS media_procedentes, 
  ROUND(AVG(total_clientes) ,  0) AS media_clientes, 
  COUNT (*) AS registros
FROM reclamacoes_bc.reclamacoes
WHERE indice IS NOT NULL
  AND ano BETWEEN 2017 AND 2023 
GROUP BY tipo_banco
ORDER BY indice_medio DESC
