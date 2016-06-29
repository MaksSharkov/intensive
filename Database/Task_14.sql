ALTER TABLE Tasks ADD modify_date datetime2 NULL

CREATE TRIGGER Updater
ON Tasks
AFTER INSERT, UPDATE
AS
	INSERT INTO Tasks (modify_date)
	VALUES (GETDATE())