-- 1
select nome, ano from filmes;

-- 2
select nome, ano, duracao from filmes order by ano;

-- 3
select nome, ano, duracao from filmes where nome = 'De Volta para o Futuro';

-- 4
select nome, ano, duracao from filmes where ano = 1997;

-- 5
select nome, ano, duracao from filmes where ano > 2000;

-- 6
select nome, ano, duracao from filmes where duracao > 100 and duracao < 150 order by duracao, ano;

-- 7
select ano, count(ano) as Quantidade, sum(duracao) as Duracao from filmes group by ano order by Duracao desc;

-- 8
select primeironome, ultimonome, genero from atores where genero = 'M';

-- 9
select primeironome, ultimonome, genero from atores where genero = 'F' order by primeironome;

-- 10
select f.nome, g.genero from filmes f inner join filmesgenero fg on f.id=fg.idfilme inner join generos g on fg.idgenero=g.id;

-- 11
select f.nome, g.genero from filmes f inner join filmesgenero fg on f.id=fg.idfilme inner join generos g on fg.idgenero=g.id
where g.genero = 'Mistério';

-- 12
select f.nome, a.primeironome, a.ultimonome, e.papel from filmes f inner join elencofilme e on f.id=e.idfilme inner join
atores a on e.idator=a.id;





