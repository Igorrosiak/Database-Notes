-- create database dbAluno1;
-- use dbAluno1;

-- drop table if exists aluno;

-- CREATE table aluno (
-- 	idaluno serial,
-- 	nome varchar(10),
-- 	genero char(1),
-- 	idade int,
-- 	cidade VARCHAR(20),
-- 	PRIMARY KEY(idaluno)
-- );

-- INSERT INTO aluno (nome, idade, genero, cidade)
-- VALUES
-- 	('Anderson', 17, 'M', 'PALHOÇA'),
-- 	('Cesar', 18, 'M', 'SÃO JOSÉ'),
-- 	('Daniel', 21, 'M', 'TUBARÃO'),
-- 	('Diego', 17, 'M', 'TUBARÃO'),
-- 	('Eduardo', 18, 'M', 'PALHOÇA'),
-- 	('Maria', 18, 'F', 'SÃO JOSÉ'),
-- 	('Carlos', 22, 'M', 'BLUMENAL'),
-- 	('Marisa', 25, 'F', 'BLUMENAL'),
-- 	('Amanda', 17, 'F', 'SÃO JOSÉ');
	
-- INSERT INTO aluno (nome, idade, genero)
-- VALUES
-- 	('José', 18, 'M');

-- 1.
-- SELECT * FROM aluno
-- WHERE "genero" = 'M';

-- 2.
-- SELECT * FROM aluno
-- WHERE "idade" = 19;

-- 3.
-- SELECT * FROM aluno 
-- WHERE "nome" LIKE 'D%';

-- 4.
-- SELECT * FROM aluno
-- WHERE "idade" BETWEEN 20 AND 22;

-- 5. 
-- SELECT * FROM aluno
-- WHERE "cidade" is null;

-- 6.
-- SELECT * FROM aluno
-- WHERE "cidade" = 'BLUMENAL'

-- 7. 
-- SELECT * FROM aluno
-- WHERE "idade" != 18

-- 8.
-- SELECT * FROM aluno 
-- WHERE "nome" LIKE '%ri%';

-- 9.
-- SELECT * FROM aluno
-- WHERE "cidade" = 'SÃO JOSÉ' AND "genero" = 'M' AND "idade" < 20

-- 10.
-- SELECT * FROM aluno
-- WHERE "genero" = 'F' AND "idade" > 20 OR "genero" = 'M' AND "idade" > 17

-- 11.
-- SELECT * FROM aluno
-- WHERE "nome" LIKE '%a%' and "nome" LIKE '%r%';

-- 12.
-- SELECT nome, idade FROM aluno
-- WHERE "genero" = 'F'

-- 13.
-- SELECT idaluno, nome FROM aluno
-- WHERE "cidade" = 'BLUMENAL'

-- 14.
-- SELECT nome, cidade FROM aluno
-- WHERE "idade" < 18

-- 15.
-- SELECT nome, cidade FROM aluno
-- WHERE "idade" BETWEEN 15 AND 18 AND "cidade" != 'PALHOÇA'

-- 16.
-- SELECT nome, cidade FROM aluno
-- WHERE "cidade" != 'null'

-- 17. 
-- SELECT nome FROM aluno
-- WHERE "idade" = 18 AND "cidade" = 'PALHOÇA' OR "idade" = 17 AND "cidade" = 'SÃO JOSÉ'

-- 18.
-- SELECT nome FROM aluno
-- WHERE "genero" = 'M' AND "cidade" = 'TUBARÃO' AND "idade" BETWEEN 18 and 25

-- 19.
-- SELECT nome, idade FROM aluno
-- ORDER BY "idade" ASC

-- 20.
-- SELECT idaluno, nome FROM aluno
-- ORDER BY "nome" DESC

-- 21.
-- SELECT * FROM aluno
-- ORDER BY "idade" DESC, "nome" ASC

-- 22.
-- SELECT * FROM aluno
-- ORDER BY "genero", "nome" ASC

-- 23.
-- UPDATE aluno
-- SET "idade" = 20
-- WHERE "idaluno" = 10

-- 24.
-- UPDATE aluno
-- SET "idade" = 21
-- WHERE "nome" = 'Tadeu' OR "nome" = 'Cesar' OR "nome" = 'Marisa' 

-- 25.
-- UPDATE aluno
-- SET "nome" = 'Luiz', "idade" = 22, "genero" = 'M', "cidade" = 'TIJUCAS'
-- WHERE "idaluno" = 10

-- 26.
-- UPDATE aluno
-- SET "cidade" = null
-- WHERE "idade" > 21

-- 27.
-- DELETE FROM aluno
-- WHERE "cidade" = null OR "cidade" = '' OR "cidade" = NULL

-- 28.
-- DELETE FROM aluno
-- WHERE "cidade" = 'TUBARÃO' AND "idade" > 15

-- 29.
-- DELETE FROM aluno
-- WHERE "nome" = 'Tadeu' OR "nome" = 'Alice' OR "nome" = 'Maria' AND "idade" = 19

-- 30.
-- DELETE FROM aluno
-- WHERE "idade" < 18 AND "genero" = 'M' OR "idade" < 21 AND "genero" = 'F'