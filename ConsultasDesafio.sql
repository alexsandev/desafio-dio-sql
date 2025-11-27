SELECT Nome, Ano FROM Filmes
GO

SELECT Nome, Ano FROM Filmes
ORDER BY Ano
GO

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome LIKE '%De Volta para o Futuro%'
GO

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997
GO

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano >= 2000
GO

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 and Duracao < 150
ORDER BY Duracao
GO

SELECT Ano, COUNT(*) as Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC
GO

SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'M'
GO

SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome
GO

SELECT Filmes.Nome, Generos.Genero FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
GO

SELECT Filmes.Nome, Generos.Genero FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério'
GO

SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme 
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id
GO