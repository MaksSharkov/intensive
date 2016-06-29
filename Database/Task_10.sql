INSERT INTO Projects (name)
VALUES ('Интенсив')

INSERT INTO Tasks (name, description, completed, deadline, project_id)
VALUES ('Изучение SQL', 'Нужно выучить основы SQL', 0, DATEADD(dd, 3, GETDATE ()), 2)