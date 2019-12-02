-- Consulta 1
SELECT funcionario.nome, processo.valor
FROM funcionario
INNER JOIN advogado AS a ON a.cpf = funcionario.cpf
INNER JOIN processo_advogado AS p ON a.cpf = p.id_advogado AND p.status_processo = 'Transito'
INNER JOIN processo ON p.id_processo = processo.id;

-- Consulta 2
SELECT cliente.nome, processo.valor
FROM cliente
INNER JOIN processo ON cliente.cpf = processo.id_cliente
INNER JOIN processo_advogado AS p ON p.id_processo = processo.id AND p.status_processo = 'Julgado';

-- Consulta 3
SELECT cliente.nome, processo.valor
FROM cliente
INNER JOIN processo ON cliente.cpf = processo.id_cliente
INNER JOIN processo_advogado AS p ON p.id_processo = processo.id AND EXTRACT(MONTH FROM processo.data_processo) = 10 
AND p.status_processo = 'Julgado';

-- Consulta 4
SELECT funcionario.nome, SUM(processo.valor)
FROM funcionario
INNER JOIN advogado ON funcionario.cpf = advogado.cpf
INNER JOIN processo_advogado ON processo_advogado.id_advogado = advogado.cpf
INNER JOIN processo ON processo.tipo = 'Criminal' AND processo_advogado.id_processo = processo.id
GROUP BY funcionario.nome;