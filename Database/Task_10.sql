INSERT INTO Projects (name)
VALUES ('��������')

INSERT INTO Tasks (name, description, completed, deadline, project_id)
VALUES ('�������� SQL', '����� ������� ������ SQL', 0, DATEADD(dd, 3, GETDATE ()), 2)