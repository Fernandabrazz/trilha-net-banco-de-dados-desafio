--1 - Buscar o nome e ano dos filmes
select 
Nome, Ano

From Filmes

--## 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT *

FROM Filmes

ORDER BY Ano

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT * FROM Filmes where nome ='De volta para o futuro'

--4 - Buscar os filmes lançados em 1997
SELECT * FROM Filmes where ano ='1997'

--5 - Buscar os filmes lançados APÓS o ano 2000

SELECT * FROM Filmes WHERE ano >= 2000 
--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, 
--ordenando pela duracao em ordem crescente
SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC;

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, 
--ordenando pela duracao em ordem decrescente

SELECT
    ano,
  COUNT(*)Quantidades
FROM Filmes
GROUP BY  ano
order BY Quantidades DESC

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT * FROM Atores
WHERE PrimeiroNome IS NOT NULL
  AND UltimoNome IS NOT NULL
  AND Genero = 'M';
  ---------------------------------------
 -- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome,
 --e ordenando pelo PrimeiroNome
 SELECT * FROM Atores
WHERE PrimeiroNome IS NOT NULL
  AND UltimoNome IS NOT NULL
  AND Genero = 'F'
  order by PrimeiroNome;
  --------------------------------------------
  --10 - Buscar o nome do filme e o gênero
  SELECT F.Nome, G.Genero FROM FilmesGenero FG
INNER JOIN Filmes F ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero

-- 11
SELECT F.Nome, G.Genero FROM FilmesGenero FG
INNER JOIN Filmes F ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério'

-- 12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM ElencoFilme EF
INNER JOIN Filmes F ON F.Id = EF.IdFilme
INNER JOIN Atores A ON A.Id = EF.IdAtor

	



 ---11 - Buscar o nome do filme e o gênero do tipo "Mistério"
 --12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
