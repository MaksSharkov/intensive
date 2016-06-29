CREATE TABLE Projects
	(	id int	PRIMARY KEY IDENTITY (1, 1),
		name nvarchar(max) NOT NULL )

CREATE TABLE Tasks
	(	id int PRIMARY KEY IDENTITY (1, 1),
		name nvarchar(max) NOT NULL,
		description nvarchar(max) NULL,
		completed bit NOT NULL,
		deadline datetime2 NULL CHECK (deadline < SYSDATETIME()),
		project_id int NOT NULL )

CREATE TABLE Tags
	(	id int PRIMARY KEY IDENTITY (1, 1),
		name nvarchar(100) NOT NULL)

CREATE TABLE TaskTags
	(	id int PRIMARY KEY IDENTITY (1, 1),
		task_id int NOT NULL,
		tag_id int NOT NULL )