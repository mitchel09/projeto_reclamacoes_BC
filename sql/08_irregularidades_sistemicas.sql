-- Objetivo: Listar as 10 irregularidades que aparecem em mais instituições (digitais e tradicionais)
-- Fonte: Tabelas Reclamações e Irregularidades
-- Regra: Cruzar irregularidades com o tipo de banco para ver se os problemas são compartilhados ou específicos de cada grupo


SELECT 
  irregularidade,
  COUNT(DISTINCT instituicao) AS total_instituicoes,
  COUNT(DISTINCT CASE 
    WHEN instituicao LIKE '%NUBANK%' OR instituicao LIKE '%C6%' 
            OR instituicao LIKE '%INTER%' OR instituicao LIKE '%NEON%'
            OR instituicao LIKE '%ORIGINAL%' OR instituicao LIKE '%PICPAY%'
            OR instituicao LIKE '%PAGBANK%' OR instituicao LIKE '%PAGSEGURO%'
            OR instituicao LIKE '%PAN%' 
    THEN instituicao END) AS instituicoes_digitais, 
  COUNT (DISTINCT CASE
    WHEN instituicao LIKE '%ITAU%' OR instituicao LIKE '%ITAÚ%'
            OR instituicao LIKE '% BB %' OR instituicao LIKE '%BB (%'
            OR instituicao LIKE '%CAIXA ECON%' OR instituicao LIKE '%SANTANDER%'
            OR instituicao LIKE '%BRADESCO%' OR instituicao LIKE '%BMG%'
            OR instituicao LIKE '%BANRISUL%' OR instituicao LIKE '%SAFRA%'
    THEN instituicao END) AS instituicoes_tradicionais, 
  ROUND(SUM(reclamacoes_procedentes) , 0) AS total_procedentes
FROM reclamacoes_bc.irregularidades 
WHERE reclamacoes_procedentes > 0 
  AND ano BETWEEN 2017 AND 2023 
GROUP BY irregularidade
HAVING COUNT(DISTINCT instituicao) >= 10
ORDER BY total_instituicoes DESC 
LIMIT 10