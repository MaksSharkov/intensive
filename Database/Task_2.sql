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

-- ��-�� ������������ ���� ����� �� �� ����� ������� ������ �������� ����� � ������� �� �� ����,
-- ������� ���������� ��������� ��� ����� ������ �������� � ��������� ����� �������, � �������
-- ����� ������� ����� id ����� � id �� �����.

CREATE TABLE AnchorTags
	(	id int PRIMARY KEY IDENTITY,
		task int NOT NULL,
		tag int NOT NULL )