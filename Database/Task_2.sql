CREATE TABLE Projects
	(	id int	PRIMARY KEY IDENTITY,
		name nvarchar(50) NOT NULL )

CREATE TABLE Tasks
	(	id int PRIMARY KEY IDENTITY,
		name nvarchar(50) NOT NULL,
		description nvarchar(200) NULL,
		complete bit NOT NULL,
		deadline date NOT NULL,
		project int NOT NULL )

CREATE TABLE Tags
	(	id int PRIMARY KEY IDENTITY,
		name nvarchar(20) NOT NULL )

-- Из-за уникальности имен тегов мы не можем сделать прямую привязку тегов к задачам по их айди,
-- поэтому используем небольшой хак чтобы решить проблему и добавляем новую таблицу, в которой
-- будут указаны связи id задач с id их тегов.

CREATE TABLE AnchorTags
	(	id int PRIMARY KEY IDENTITY,
		task int NOT NULL,
		tag int NOT NULL )