EXEC NALUNO(2022161633);

SELECT titulo, genero, preco_tabela FROM livros
WHERE to_char(data_edicao, 'yyyy') LIKE'2020'
ORDER BY data_edicao DESC;
EXEC SQLCHECK('FDTWGOFCTGHDGFG');

SELECT 
to_char(SYSDATE, 'DDTH, Month, yyyy') as "DATA Atual",
to_char(SYSDATE, 'hh24:mi:ss PM') as "Hora Min Sec Atual"
FROM Dual;
EXEC SQLCHECK('FDVOLRHDBSMRHUO');


SELECT
titulo as "Titulo",
preco_tabela as "Preco",
to_char(data_edicao, 'dd-mm-yyyy') as DATA_EDICAO
FROM livros
WHERE SYSDATE - data_edicao < 180;
EXEC SQLCHECK('FDMNLCZEJJLUIAV');


SELECT DISTINCT 
Titulo, 
to_char(data_edicao, 'dd-mm-yyyy') as "DATA"
FROM livros, clientes, vendas
WHERE
livros.codigo_livro = vendas.codigo_livro
AND
vendas.codigo_cliente = clientes.codigo_cliente
AND
data_venda BETWEEN to_date('2014-01-15','yyyy-mm-dd') AND to_date('2014-02-18', 'yyyy-mm-dd')
AND 
morada LIKE '%Lisboa%'
ORDER BY "DATA";
EXEC SQLCHECK('FDKWDJZFBNMKJXK');



SELECT titulo, ano_mes
FROM livros 
WHERE 
genero LIKE 
EXEC SQLCHECK('FDOVPNBGJYYXKBW');












