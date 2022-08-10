.mode json
.output cnpj.json

SELECT *
FROM estabelecimento AS es
INNER JOIN empresas AS em ON es.cnpj_b=em.cnpj_b
LEFT JOIN simples AS si ON es.cnpj_b=si.cnpj_b;
