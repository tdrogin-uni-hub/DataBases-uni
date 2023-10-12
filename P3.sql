EXEC NALUNO(2022161633);


SELECT 
livros.titulo,
livros.genero
FROM livros
JOIN autores ON livros.codigo_autor = autores.codigo_autor
WHERE
nome LIKE 'J. K. Rowling'
AND 
preco_tabela < 20;
EXEC SQLCHECK('FCINKYPCGVYDGGH');


SELECT 
livros.titulo,
livros.genero,
autores.nome,
autores.morada
FROM livros
JOIN autores ON livros.codigo_autor = autores.codigo_autor
WHERE
autores.morada LIKE '%Cascais%'
AND
livros.genero NOT LIKE 'Romance'
ORDER BY titulo;
EXEC SQLCHECK('FCEKVCZDJCDXCDF');


SELECT DISTINCT
nome,
idade, 
genero_preferido
FROM autores
JOIN livros ON autores.codigo_autor = livros.codigo_autor
WHERE
genero_preferido LIKE genero
ORDER BY nome;
EXEC SQLCHECK('FCUXGHVEQFTXWVO');


SELECT 
titulo, 
genero,
preco_tabela,
paginas
FROM livros
JOIN vendas ON livros.codigo_livro = vendas.codigo_livro
JOIN clientes ON vendas.codigo_cliente = clientes.codigo_cliente
WHERE 
paginas > 300
AND 
morada LIKE '%Porto%'
ORDER BY titulo;
EXEC SQLCHECK('FCOAPRNFTZUAMIP');


SELECT 
nome, 
genero_preferido,
livros.titulo,
livros.genero as "Genero do Livro"
FROM autores
JOIN livros ON autores.codigo_autor = livros.codigo_autor
WHERE
preco_tabela < 40
AND 
genero_preferido NOT LIKE genero
ORDER BY nome, titulo;
EXEC SQLCHECK('FCTVMKWGHTEVJOA');


SELECT DISTINCT
titulo, 
preco_tabela,
unidades_vendidas,
ROUND(unidades_vendidas * preco_tabela * 0.2, 2) as "Rendeu"
FROM livros
WHERE
genero LIKE 'Fantástico'
ORDER BY "Rendeu" desc;
EXEC SQSELECT DISTINCT
titulo, 
preco_tabela,
unidades_vendidas,
ROUND(unidades_vendidas * preco_tabela * 0.2, 2) as "Rendeu"
FROM livros
WHERE
genero LIKE 'Fantástico'
ORDER BY "Rendeu" desc;LCHECK('FCGBQWUHPLOLVGV');


SELECT 
autores.nome,
autores.idade, 
autores.morada
FROM autores
JOIN clientes ON autores.n_contribuinte = clientes.n_contribuinte;
EXEC SQLCHECK('FCHIEOUIJMGUZSG');


SELECT DISTINCT
titulo,
genero, 
preco_tabela,
CAST(TRUNC(unidades_vendidas * preco_tabela * 0.2) AS INTEGER) AS "Rendimento"
FROM livros
WHERE
unidades_vendidas * preco_tabela * 0.2 > 400000
ORDER BY "Rendimento" desc, preco_tabela;
EXEC SQLCHECK('FCTTXUUJYDKYYCO');


SELECT 
titulo,
preco_tabela,
paginas,
ROUND((preco_tabela / paginas * 100), 2) AS "Custo página",
CEIL(preco_tabela / paginas * 100) AS "Custo pág.(sup)",
FLOOR(preco_tabela / paginas * 100) AS "Custo pág.(inf)"
FROM livros
WHERE paginas BETWEEN 100 AND 300
ORDER BY titulo;
EXEC SQLCHECK('FCQVTXHKQBHFJBZ');


--12b
SELECT 
LOWER(titulo) AS "Titulo (em minusculas)",
UPPER(titulo) AS "Titulo (em maiusculas)",
INITCAP(titulo) AS "Titulo (1a letra maiuscula)"
FROM livros
WHERE genero = 'Informática'
ORDER BY titulo;
EXEC SQLCHECK('FCFXAVLLOEBMIEN');


--13
SELECT 
titulo as "Titulo",
preco_tabela as "Preco",
quant_em_stock as "Quantidade em stock"
FROM livros
WHERENIQB19839166S43N
LOWER(genero) LSELECT 
titulo, 
preco_tabela as preco, 
ROUND(preco_tabela * 1.08, 1) as preco_com_aumento
FROM livros
WHERE
genero LIKE 'Fantástico'
AND
preco_tabela > 20
ORDER BY preco_tabela DESC;IKE '%romance%'
ORDER BY quant_em_stock DESC;
EXEC SQLCHECK('FCROYAZMYRXAHEL');


--14
SELECT 
    nome AS "Nome completo",
    SUBSTR(nome, 1, INSTR(nome, ' ') - 1) AS "Primeiro Nome",
    SUBSTR(nome, INSTR(nome, ' ', -1) + 1) AS "Ultimo Nome"
FROM autores
WHERE genero_preferido = 'Informática'
ORDER BY idade, nome;
EXEC SQLCHECK('FCVMAFTNZJENMQU');


--15
SELECT 
LOWER(titulo) AS "Titulo (em minusculas)",
UPPER(genero) AS "genero (maisculas)",
INITCAP(autores.nome) AS "Nome Autor (1a letra)"
FROM livros
JOIN autores ON livros.codigo_autor = autores.codigo_autor
JOIN editoras ON livros.codigo_editora = editoras.codigo_editora
WHERE 
editoras.nome = 'FCA - EDITORA'
AND 
genero_preferido LIKE genero 
ORDER BY titulo DESC;
EXEC SQLCHECK('FCKUJPVODLJWHHD');


--16
SELECT 
titulo,
genero
FROM livros
WHERE 
LENGTH(titulo) > 35
AND 
titulo LIKE '%f%'
ORDER BY titulo;
EXEC SQLCHECK('FCYYGHXPVYZLYEN');	


SELECT 
titulo, 
preco_tabela as preco, 
ROUND(preco_tabela * 1.08, 1) as preco_com_aumento
FROM livros
WHERE
genero LIKE 'Fantástico'
AND
preco_tabela > 20
ORDER BY preco_tabela DESC;
EXEC SQLCHECK('FCGQIBVQANPMAAK');