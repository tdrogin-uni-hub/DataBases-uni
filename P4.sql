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


SELECT DISTINCT
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

--7
SELECT DISTINCT
    titulo, 
    TO_CHAR(TO_DATE(data_edicao, 'dd-MON-yy'), 'yyyy-mm') AS ano_mes
FROM livros 
JOIN vendas ON livros.codigo_livro = vendas.codigo_livro
WHERE 
LOWER(genero) LIKE 'informática'
AND
TO_CHAR(data_edicao, 'yyyy-mm') = TO_CHAR(data_venda, 'yyyy-mm')
AND 
unidades_vendidas > 0
ORDER BY ano_mes;
EXEC SQLCHECK('FDOVPNBGJYYXKBW');


SELECT DISTINCT
nome 
FROM autores 
JOIN livros ON autores.codigo_autor = livros.codigo_autor
WHERE
data_edicao BETWEEN to_date('2013-12-21','yyyy-mm-dd') AND to_date('2014-03-21', 'yyyy-mm-dd')
AND
paginas < 630
ORDER BY nome;
EXEC SQLCHECK('FDHHZHYHUIKALHN');


SELECT DISTINCT
genero, 
titulo as "Titulo",
TO_CHAR(data_edicao, 'dd-mm-yyyy') as data_edicao,
TRUNC((SYSDATE - data_edicao) / 365, 0) as "Num. de anos"
FROM livros
WHERE LOWER(genero) IN ('romance', 'aventura')
ORDER BY genero, titulo;
EXEC SQLCHECK('FDLGBFHIIJNSMYO');


SELECT DISTINCT clientes.nome
FROM clientes
JOIN vendas ON clientes.codigo_cliente = vendas.codigo_cliente
WHERE 
TO_CHAR(data_venda, 'DY') = 'SAT' 
AND 
TO_CHAR(data_venda, 'HH24') >= '20'
AND
TO_CHAR(data_venda, 'DD') - '7' < '0';
EXEC SQLCHECK('FDSINCQJUJVPNCI');


SELECT autores.nome, autores.idade
FROM autores
LEFT JOIN livros ON autores.codigo_autor = livros.codigo_autor
WHERE livros.codigo_autor IS NULL
ORDER BY autores.idade;
EXEC SQLCHECK('FDKXFDFKEVZVOTU');


SELECT DISTINCT nome
FROM autores
MINUS

SELECT nome
FROM autores
JOIN livros ON autores.codigo_autor = livros.codigo_autor
WHERE livros.codigo_autor IS NOT NULL
AND livros.codigo_autor != 26
MINUS

SELECT nome
FROM autores
JOIN livros ON autores.codigo_autor = livros.codigo_autor
WHERE
EXTRACT(YEAR FROM SYSDATE) != EXTRACT(YEAR FROM data_edicao)
ORDER BY nome DESC;
EXEC SQLCHECK('FDBJQVPLQMMGPLE');