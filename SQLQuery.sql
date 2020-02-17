select  
index
,nome_if
,co_if
,tp_consolidado_bancario
,segmento
,tp_consolidacao
,tp_controle
,cidade
,uf
,dt_base
,ativo_total
,carteira_credito_classificada
,passivo_circulante_exigivel_longo_prazo
,captacoes
,patrimonio_liquido
,lucro_liquido
,patrimonio_referencia
,ic_basileia
,ic_imobilizacao
,nu_agencias
,nu_postos_atendimento
from public.prud_resumo_import
where  dt_base = '09/2019' and nome_if like 'ITAU%'
order by nome_if ASC

select  
index
,nome_if
,co_if
,tp_consolidado_bancario
,tp_consolidacao
,tp_controle
,cidade
,uf
,dt_base
,ic_apuracao_exposicao_total
,ic_apuracao_patrimonio_referencia
,ic_metodologia_simplificada
,exposicao_total
,total_ativos_consolidado_exterior
,dt_ultima_alteracao_segmento
,segmento
FROM
    public.prud_segmentacao_import s
INNER JOIN 
    public.prud_resumo_import r
ON
    s.nome_if = r.nome_if,
    s.co_if = r.co_if
    s.dt_base = r.dt_base
LIMIT 10;


select  index
,nome_if
,co_if
,tp_consolidado_bancario
,segmento
,tp_consolidacao
,tp_controle
,cidade
,uf
,dt_base
,ativo_total
,carteira_credito_classificada
,passivo_circulante_exigivel_longo_prazo
,captacoes
,patrimonio_liquido
,lucro_liquido
,patrimonio_referencia
,ic_basileia
,ic_imobilizacao
,nu_agencias
,nu_postos_atendimento
from public.prud_resumo_import
LIMIT 10;


select  index
,nome_if
,co_if
,tp_consolidado_bancario
,segmento
,tp_consolidacao
,tp_controle
,cidade
,uf
,dt_base
,depositos_vista
,depositos_poupanca
,depositos_interfinanceiros
,depositos_prazo
,outros_depositos
,deposito_total
,obrigacoes_operacoes_compromissadas
,letras_credito_imobiliario
,letras_credito_agronegocio
,letras_financeiras
,obrigacoes_titulos_valores_mobiliarios_exterior
,outros_recursos_aceites_emissao_titulos
,recursos_aceites_emissao_titulos
,obrigacoes_emprestimos_repasses
,captacoes
,instrumentos_derivativos
,outras_obrigacoes
,passivo_circulante_exigivel_longo_prazo
,resultado_exercicios_futuros
,patrimonio_liquido
,passivo_total
from public.prud_passivo_import
LIMIT 1000

select  index
,nome_if
,co_if
,tp_consolidado_bancario
,segmento
,tp_consolidacao
,tp_controle
,cidade
,uf
,dt_base
,capital_principal
,capital_complementar
,patrimonio_referencia_nivel_1
,capital_nivel_2
,patrimonio_referencia
,rwa_risco_credito
,rwa_cam
,rwa_com
,rwa_jur
,rwa_acs
,rwa_risco_mercado
,rwa_risco_operacional
,rwa_ativos_ponderados_risco
,exposicao_total
,ic_capital_principal
,ic_capital_nivel_1
,ic_basileia
,razao_alavancagem
,ic_imobilizacao
from public.prud_informacoes_capital_import
LIMIT 1000


SELECT
    a.nome_if
    ,a.co_if
    ,a.tp_consolidado_bancario
    ,a.segmento
    ,a.tp_consolidacao
    ,a.tp_controle
    ,a.cidade
    ,a.uf
    ,a.dt_base
    ,*


SELECT count(*)

SELECT 
       -- public.prud_resumo_import r
       r.nome_if,
       r.co_if,
       r.tp_consolidado_bancario,
       r.segmento,
       r.tp_consolidacao,
       r.tp_controle,
       r.cidade,
       r.uf,
       r.dt_base,
       r.ativo_total,
       r.carteira_credito_classificada,
       r.passivo_circulante_exigivel_longo_prazo,
       r.captacoes,
       r.patrimonio_liquido,
       r.lucro_liquido,
       r.patrimonio_referencia,
       r.ic_basileia,
       r.ic_imobilizacao,
       r.nu_agencias,
       r.nu_postos_atendimento,
       -- public.prud_passivo_import p
       depositos_vista,
       depositos_poupanca,
       depositos_interfinanceiros,
       depositos_prazo,
       outros_depositos,
       deposito_total,
       obrigacoes_operacoes_compromissadas,
       letras_credito_imobiliario,
       letras_credito_agronegocio,
       letras_financeiras,
       obrigacoes_titulos_valores_mobiliarios_exterior,
       outros_recursos_aceites_emissao_titulos,
       recursos_aceites_emissao_titulos,
       obrigacoes_emprestimos_repasses,
       p.captacoes,
       instrumentos_derivativos,
       outras_obrigacoes,
       p.passivo_circulante_exigivel_longo_prazo,
       resultado_exercicios_futuros,
       p.patrimonio_liquido,
       passivo_total,
       -- public.prud_ativo_import a
       disponibilidades,
       aplicacoes_interfinanceiras_liquidez,
       tvm_derivativos,
       operacoes_credito,
       provisao_operacoes_credito,
       operacoes_credito_liquidas_provisao,
       arrendamento_mercantil_receber,
       imobilizado_de_arrendamento,
       credores_antecipacao_valor_residual,
       provisao_sobre_arrendamento_mercantil,
       arrendamento_mercantil_liquido_provisao,
       outros_creditos_liquidos_provisao,
       outros_ativos_realizaveis,
       permanente_ajustado,
       a.ativo_total_ajustado,
       a.ativo_total,
       -- public.prud_demonstracao_resultado_import dr
       rendas_op_credito,
       rendas_op_arrendamento_mercantil,
       rendas_op_tvm,
       rendas_op_derivativos,
       resultado_op_cambio,
       rendas_aplicacoes_compulsorias,
       receitas_intermediacao_financeira,
       despesas_captacao,
       despesas_obrigacoes_emprestimos_repasses,
       despesas_operacoes_arrendamento_mercantil,
       resultado_provisao_credito_dificil_liquidacao,
       despesas_intermediacao_financeira,
       resultado_intermediacao_financeira,
       rendas_prestacao_servicos,
       rendas_tarifas_bancarias,
       despesas_pessoal,
       despesas_administrativas,
       despesas_tributarias,
       resultado_participacoes,
       outras_receitas_operacionais,
       outras_despesas_operacionais,
       outras_receitas_despesas_operacionais,
       resultado_operacional,
       resultado_nao_operacional,
       resultado_antes_tributacao_lucro_participacao,
       imposto_renda_contribuicao_social,
       participacao_lucros,
       dr.lucro_liquido,
       juros_sobre_capital_proprio,
       juros_sobre_capital_cooperativas,
       -- public.prud_informacoes_capital_import ic
       capital_principal,
       capital_complementar,
       patrimonio_referencia_nivel_1,
       capital_nivel_2,
       ic.patrimonio_referencia,
       rwa_risco_credito,
       rwa_cam,
       rwa_com,
       rwa_jur,
       rwa_acs,
       rwa_risco_mercado,
       rwa_risco_operacional,
       rwa_ativos_ponderados_risco,
       ic.exposicao_total,
       ic_capital_principal,
       ic_capital_nivel_1,
       ic.ic_basileia,
       razao_alavancagem,
       ic.ic_imobilizacao,
       -- public.prud_segmentacao_import s
       ic_apuracao_exposicao_total,
       ic_apuracao_patrimonio_referencia,
       ic_metodologia_simplificada,
       s.exposicao_total,
       total_ativos_consolidado_exterior,
       dt_ultima_alteracao_segmento,
       s.segmento
FROM   public.prud_resumo_import r
       LEFT JOIN public.prud_passivo_import p
              ON r.co_if = p.co_if
                 AND r.dt_base = p.dt_base
       LEFT JOIN public.prud_ativo_import a
              ON r.co_if = a.co_if
                 AND r.dt_base = a.dt_base
       LEFT JOIN public.prud_demonstracao_resultado_import dr
              ON r.co_if = dr.co_if
                 AND r.dt_base = dr.dt_base
       LEFT JOIN public.prud_informacoes_capital_import ic
              ON r.co_if = ic.co_if
                 AND r.dt_base = ic.dt_base
       LEFT JOIN public.prud_segmentacao_import s
              ON r.co_if = s.co_if
                 AND r.dt_base = s.dt_base
;




SELECT * FROM prud_geral where dt_base = '';

select max(dt_base) from prud_geral


