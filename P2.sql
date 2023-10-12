EXEC NALUNO(2022161633); 


SELECT titulo, genero, preco_tabela
FROM livros
WHERE genero IN ('Policial', 'Aventura')
AND preco_tabela > 20
ORDER BY titulo;
EXEC SQLCHECK('FBZFTYYCWMJOENW');


SELECT nome, sexo
FROM autores
WHERE idade > 30
AND genero_preferido LIKE 'Romance'
ORDER BY nome;
EXEC SQLCHECK('FBHYDWADZAUJFAT');


SELECT DISTINCT genero
FROM livros
WHERE paginas > 400
OR preco_tabela > 25
ORDER BY genero;
EXEC SQLCHECK('FBJQNSWEVIFUGWV');


SELECT titulo, 
preco_tabela as Preco
FROM livros
WHERE genero LIKE 'Informática'
ORDER BY preco_tabela;
EXEC SQLCHECK('FBHOWKTFDMPWHAI');


SELECT titulo, ISBN, quant_em_stock
FROM livros
WHERE genero = 'Informática'
AND quant_em_stock > 10
ORDER BY preco_tabela,
quant_em_stock desc;
EXEC SQLCHECK('FBLPCFWGZYXCITX');


SELECT DISTINCT codigo_autor
FROM livros
WHERE quant_em_stock > 0
ORDER BY codigo_autor desc;
EXEC SQLCHECK('FBCLDRYHKXKMJXJ');


SELECT titulo
FROM livros
WHERE genero NOT LIKE 'Aventura';
EXEC SQLCHECK('FBELDMQIWUXFKNT');


SELECT titulo, preco_tabela
FROM livros
WHERE genero NOT LIKE 'Aventura';
EXEC SQLCHECK('FBIZEEEJGLOKLVI');

SELECT nome, sexo
FROM autores
WHERE idade > 30
AND genero_preferido LIKE 'Romance'
ORDER BY nome;
EXEC SQLCHECK('FBTNEIDKPDPIMYQ');


SELECT nome, idade
FROM autores 
WHERE nome LIKE '%o%' 
AND nome LIKE '%u%'
ORDER BY idade;
EXEC SQLCHECK('FBCVUBULKHUONEV');


SELECT titulo, genero
FROM livros
WHERE titulo LIKE '%O%' AND titulo LIKE '%st%'
OR
titulo LIKE '%W%' AND titulo LIKE '%NT%'
ORDER BY preco_tabela;
EXEC SQLCHECK('FBLTKPUMCPJWOJT');


SELECT titulo, genero, preco_tabela
FROM livros
WHERE 
genero LIKE'Economia'
OR 
genero LIKE 'Romance'
OR
genero LIKE 'Policial'
ORDER BY titulo;
EXEC SQLCHECK('FBWUSOSNTSQGPPG');


SELECT titulo, 
paginas as "Num de Paginas"
FROM livros
WHERE genero LIKE 'Romance'
AND
paginas < 520
ORDER BY paginas;
EXEC SQLCHECK('FBHNFMWOMZTHQNJ');


SELECT codigo_livro, 
titulo, 
preco_tabela,
quant_em_stock as "Quantidade em stock"
FROM livros
WHERE
genero LIKE 'Policial'
ORDER BY quant_em_stock;
EXEC SQLCHECK('FBONDSEPBRRKRIO');


SELECT 
'O livro "' || livros.titulo || '" tem ' || livros.paginas || ' paginas.'
as
"Listagem paginas dos Livros"
FROM livros
WHERE 
paginas LIKE 435
OR
paginas LIKE 768 
OR
paginas LIKE 765
ORDER BY titulo;
EXEC SQLCHECK('FBTFIETQMZONSSJ');