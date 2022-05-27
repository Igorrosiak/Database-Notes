-- DROP TABLE IF EXISTS livro

-- CREATE TABLE autor(
-- 	id serial NOT NULL,
-- 	nome varchar(50) NOT NULL,
-- 	sobrenome varchar(50),
-- 	PRIMARY KEY(id)
-- );

-- CREATE TABLE editora(
-- 	id serial NOT NULL,
-- 	nome varchar(30),
-- 	localidade varchar(100),
-- 	PRIMARY KEY(id)
-- );

-- CREATE TABLE livro(
-- 	id serial NOT NULL,
-- 	titulo varchar(50) NOT NULL,
-- 	subtitulo varchar(100),
-- 	isbn int, 
-- 	ano int,
-- 	autor_id int,
-- 	editora_id int,
-- 	PRIMARY KEY(id),
-- 	FOREIGN KEY(autor_id) REFERENCES autor(id),
-- 	FOREIGN KEY(editora_id) REFERENCES editora(id)
-- );

-- INSERT INTO autor (nome, sobrenome)
-- 	VALUES
-- 	('Cleber', 'Machado'),
-- 	('Junior', 'Souza'),
-- 	('Marcio', 'Donato'),
-- 	('Marcelo', 'Brito'),
-- 	('Eusébio', 'Carneiro'),
-- 	('Cintia', 'Cascais'),
-- 	('Orlando', 'Proença'),
-- 	('Jennifer', 'Freisleben'),
-- 	('Sebastian', 'Monforte'),
-- 	('Nikita', 'Keil'),
-- 	('Rayan', 'Nacismento'),
-- 	('Dilan', 'Novasco'),
-- 	('Uriel', 'Noleto'),
-- 	('Louissa', 'Candido'),
-- 	('Karen', 'Tavares'),
-- 	('Abdul', 'Matias'),
-- 	('Mariana', 'Lemes'),
-- 	('Nikol', 'Arantes'),
-- 	('Juliana', 'Toleto'),
-- 	('Lavínia', 'Meneses');

-- INSERT INTO editora (nome, localidade)
-- 	VALUES
-- 	('Companhia das Letras.', 'São Paulo'),
-- 	('Rocco', 'Rio de Janeiro'),
-- 	('Arqueiro', 'Minas Gerais'),
-- 	('Intrínseca', 'Rio Grande do Sul'),
-- 	('Sextante', 'Rio Grande do Sul'),
-- 	('Ediouro', 'Minas Gerais'),
-- 	('Panda Books.', 'Mato Grosso'),
-- 	('Ubu', 'Santa Catarina'),
-- 	('Alta Books', 'Mato Grosso do Sul'),
-- 	('Aleph', 'Keil'),
-- 	('Chiado Grupo', 'Rio Grande do Sul'),
-- 	('Loyola', 'São Paulo'),
-- 	('Record', 'São Paulo'),
-- 	('Draco', 'Rio de Janeiro'),
-- 	('Martin', 'Santa Catarina'),
-- 	('Escala', 'Minas Gerais'),
-- 	('Moderna', 'Mato Grosso do Sul'),
-- 	('Pensamento', 'Mato Grosso'),
-- 	('Catarinense', 'Santa Catarina'),
-- 	('Nobel', 'Santa Catarina');

-- INSERT INTO livro (titulo, subtitulo, isbn, ano, autor_id, editora_id)
-- 	VALUES
-- 	('O menino de pijama listrado', 'Subtitulo de Exemplo', 1234, 2015, 19, 2),
-- 	('Manual da Felicidade', 'Subtitulo de Exemplo', 2345, 2015, 1, 2),
-- 	('Do mil ao milhão', 'Subtitulo de Exemplo', 3456, 2018, 2, 3),
-- 	('Harry Potter', 'Subtitulo de Exemplo', 4567, 2019, 2, 1),
-- 	('Percy Jackson', 'Subtitulo de Exemplo', 5678, 2012, 3, 4),
-- 	('Guia da Riqueza', 'Subtitulo de Exemplo', 6789, 2011, 4, 5),
-- 	('Como ficar rico em 30 dias', 'Subtitulo de Exemplo', 7891, 2015, 5, 6),
-- 	('A bela e a fera', 'Subtitulo de Exemplo', 9876, 2016, 6, 7),
-- 	('Pinóquio', 'Subtitulo de Exemplo', 8765, 2017, 7, 8),
-- 	('Mar de monstros', 'Subtitulo de Exemplo', 7654, 2020, 8, 9),
-- 	('Mistérios do sul', 'Subtitulo de Exemplo', 6543, 2021, 9, 10),
-- 	('Manual do battistella', 'Subtitulo de Exemplo', 5432, 2005, 10, 11),
-- 	('Manual do bruno', 'Subtitulo de Exemplo', 4321, 2020, 11, 12),
-- 	('Seguindo a felicidade', 'Subtitulo de Exemplo', 1456, 2014, 12, 13),
-- 	('Politica sem critica', 'Subtitulo de Exemplo', 1567, 2017, 13, 14),
-- 	('Mixer da felicidade', 'Subtitulo de Exemplo', 1678, 2018, 14, 15),
-- 	('A escuridão', 'Subtitulo de Exemplo', 1789, 2016, 15, 16),
-- 	('A luz da vida', 'Subtitulo de Exemplo', 1123, 2000, 16, 17),
-- 	('Hitler e suas atrocidades', 'Subtitulo de Exemplo', 1345, 2010, 17, 18),
-- 	('Diario de um banana', 'Subtitulo de Exemplo', 1472, 2008, 18, 19);

-- SELECT * FROM livro
-- 	WHERE ano > 2015;

-- SELECT * FROM autor
-- 	WHERE nome LIKE 'A%'

-- SELECT * FROM autor
-- 	WHERE nome LIKE '%r%'

-- SELECT * FROM editora
-- 	WHERE localidade = 'Florianópolis' OR localidade = 'São José'

SELECT 
	livro.titulo,
	livro.ano,
	autor.nome AS "Nome do Autor"
	FROM
	livro
	INNER JOIN autor ON
	autor.id = livro.autor_id 
UNION
SELECT
	editora.nome,
	editora.localidade,
	livro.id
	FROM
	livro
	INNER JOIN editora ON
	livro.editora_id = editora.id
	