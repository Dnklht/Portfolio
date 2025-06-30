-- Selecionando todas as linhas e colunas da tabela, sem exceção

SELECT * 
FROM criminalidade;

-- Quantidade de crimes registrados por cidade ordenada em ordem descrescente

SELECT cidade, COUNT(*) as total_ocorrencias
FROM criminalidade
GROUP BY cidade
ORDER BY total_ocorrencias DESC;

-- Quantidade de crimes registrados pelos bairros de cada cidade em ordem decrescente

SELECT cidade, bairro, COUNT(*) AS total_registros
FROM criminalidade
GROUP BY cidade, bairro
ORDER BY cidade ASC, total_registros DESC;

-- Tipo de crime mais recorrente

SELECT tipo_crime, COUNT(*) as total_registros
FROM criminalidade
GROUP BY tipo_crime
ORDER BY total_registros DESC;

-- Selecionando o meses do ano com suas respectivas quantidades de registros no ano de 2025

SELECT 
	EXTRACT(MONTH FROM data_ocorrencia) AS mes,
	COUNT(*) AS total_registros
FROM criminalidade
WHERE
	EXTRACT(YEAR FROM data_ocorrencia) = 2025
GROUP BY mes
ORDER BY total_registros DESC;

-- Total de registros em cada delegacia (apenas o ID delas)

SELECT id_delegacia, COUNT(*) AS total_registros
FROM criminalidade
GROUP BY id_delegacia
ORDER BY total_registros DESC;

-- Total de registros em cada delegacia (apenas o nome delas)

SELECT COUNT(c.*) AS total_registros, d.nome
FROM criminalidade c
INNER JOIN delegacias d ON c.id_delegacia = d.id_delegacia
GROUP BY d.nome 
ORDER BY total_registros DESC;