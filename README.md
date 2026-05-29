# A Revolução dos Bancos Digitais Melhorou ou Piorou a Experiência do Consumidor Brasileiro?

Análise das reclamações registradas no Banco Central do Brasil entre 2017 e 2023, investigando se a digitalização do setor bancário trouxe avanços reais para o consumidor ou apenas potencializou problemas que já existiam no sistema.

---

## Sobre o Projeto

Em 2017, o sistema bancário brasileiro vivia uma década marcada por baixo crescimento, alta capitalização e forte concentração nas mãos de poucos grandes bancos. Foi nesse cenário que a expansão das fintechs e as mudanças regulatórias abriram espaço para a chamada corrida dos bancos digitais.

A mudança não veio apenas da oferta, mas também do comportamento do consumidor. O maior uso de smartphones, a busca por experiências simplificadas e a expectativa de custos menores tornaram milhões de brasileiros receptivos às ofertas digitais. A partir de 2018 e 2019, o ritmo acelerou drasticamente, com milhões de contas abertas por mês e bancos tradicionais sendo pressionados a investir pesadamente em canais digitais.

Mas velocidade e volume não significam qualidade. Este projeto investiga, com base em dados públicos do Banco Central, se essa transformação foi planejada para o consumidor ou apenas para não perder mercado.

### Hipótese Central

As instituições financeiras priorizaram não ficar para trás na corrida digital, investindo menos em segurança e acessibilidade para o consumidor.

### Perguntas Investigadas

- A experiência simplificada e o menor custo vieram acompanhados de segurança e transparência?
- Os bancos digitais resolveram problemas que já existiam ou apenas potencializaram falhas do sistema?
- A grande oferta de instituições disponíveis hoje vem acompanhada de políticas adequadas de atendimento ao consumidor?

---

## Ferramentas Utilizadas

| Etapa | Ferramenta | Finalidade |
|---|---|---|
| Extração e Limpeza | Python (Pandas) no VS Code | ETL: consolidação de múltiplos CSVs, padronização de colunas, tratamento de tipos e nulos |
| Análise | SQL no BigQuery | Nove análises estruturadas para responder às perguntas do projeto |
| Visualização | Tableau Public | Dashboard interativo com os principais insights |

---

## Estrutura do Repositório

```
projeto_reclamacoes_BC/
├── README.md
├── dados/
│     ├── reclamacoes_limpo.csv
│     └── irregularidades_limpo.csv
├── notebook/
│     └── projeto_reclamacoes_bc.ipynb
├── sql/
│     ├── 01_ranking_instituicoes.sql
│     ├── 02_proporcao_procedentes.sql
│     ├── 03_irregularidades_frequentes.sql
│     ├── 04_evolucao_temporal.sql
│     ├── 05_melhora_consistente.sql
│     ├── 06_digital_vs_tradicional.sql
│     ├── 07_porte_vs_indice.sqlh
│     ├── 08_irregularidades_sistemicas.sql
│     └── 09_sazonalidade.sql
└── dashboard/
      └── prints e link do dashboard
```

---

## Principais Insights

### 1. Bancos digitais lideram o ranking de piores índices

Das dez instituições financeiras com maior índice médio de reclamações entre 2017 e 2023, sete são bancos digitais. O C6 Bank lidera com índice de 207,53, mais que o dobro do segundo colocado.

### 2. Os problemas cresceram junto com a digitalização

O índice médio de reclamações cresceu cerca de oito vezes entre 2017 (44,33) e 2021 (345,92). A pandemia intensificou uma tendência que já existia desde 2019, quando as fintechs começaram a ganhar escala significativa.

### 3. Bancos digitais geram o dobro de problemas proporcionalmente

Embora os bancos tradicionais registrem maior volume absoluto de reclamações em razão de sua base de clientes muito maior, o índice médio dos bancos digitais é mais que o dobro dos tradicionais (101,43 contra 48,48). Isso significa que, proporcionalmente, o consumidor de banco digital tem o dobro de chance de ter uma reclamação confirmada pelo Banco Central.

### 4. Os problemas são os mesmos para todos

As irregularidades mais frequentes, como segurança de operações, informação inadequada ao cliente e problemas com cartões de crédito, afetam tanto bancos digitais quanto tradicionais. O que muda entre os dois grupos não é o tipo de problema, mas a intensidade com que ocorre.

### 5. Tamanho não é o problema

Os cinco maiores bancos tradicionais do Brasil (Caixa, Bradesco, Itaú, BB e Santander) somam mais de 300 milhões de clientes, mas apresentam índices entre 18 e 27. Os bancos digitais, com bases significativamente menores, apresentam índices que chegam a 207. Décadas de operação construíram estruturas proporcionais ao porte.

### 6. Bancos tradicionais demonstram mais capacidade de evolução

Das dez instituições que mais reduziram seu índice de reclamações entre 2017 e 2023, apenas uma é digital: o Original. Os bancos tradicionais demonstram, ao longo dos anos, maior capacidade de correção e maturidade operacional.

### 7. O Nubank é a exceção positiva

Em múltiplas análises, o Nubank apareceu como o banco digital com melhor desempenho proporcional. Isso indica que é possível crescer digitalmente com qualidade, mas essa não tem sido a regra do setor.

### 8. Existe sazonalidade clara

O segundo semestre concentra índices 80% maiores que o primeiro, possivelmente impulsionado pela Black Friday, festas de fim de ano e maior movimentação financeira do período.

---

## Dashboard Interativo

O dashboard completo com as principais visualizações está disponível no Tableau Public:

🔗 **[Acessar Dashboard](https://public.tableau.com/views/ARevoluodosBancosDigitaisMelhorououPiorouaExperinciadoConsumidorBrasileiro/Dashboard_Pjt)**

---

## Conclusão

Os bancos digitais trouxeram ao consumidor brasileiro comodidade, praticidade e facilidade de acesso a serviços financeiros que antes exigiam presença física em agências. Essa transformação é inegável e positiva.

Entretanto, a velocidade com que essas instituições cresceram não foi acompanhada pela construção de uma estrutura proporcional de atendimento, segurança e resolução de problemas. Os dados mostram que, proporcionalmente, o consumidor de banco digital tem o dobro de chance de ter uma reclamação confirmada pelo Banco Central.

A hipótese central do projeto foi sustentada pelos dados em todas as análises realizadas: a transformação digital do setor bancário brasileiro priorizou velocidade e escala, e o consumidor pagou parte desse custo. A revolução digital bancária ainda é uma obra em construção, onde a experiência do consumidor precisa deixar de ser consequência do crescimento e passar a ser prioridade dele.

---

## Sobre

Projeto desenvolvido como parte do portfólio de transição para a área de Ciência de Dados.

**Fonte dos Dados:** [Ranking de Reclamações do Banco Central do Brasil](https://www.bcb.gov.br/estabilidadefinanceira/rankingreclamacoes)

**Período Analisado:** 2017 a 2023 (dados de 2024 e 2025 sinalizados como parciais)
