ALTER TABLE Tasks ADD modify_date datetime2 NULL

CREATE TRIGGER Modify_Date_Updater
ON Tasks
AFTER INSERT, UPDATE
AS BEGIN
	UPDATE Tasks SET modify_date = GETDATE()
	WHERE id IN (SELECT id FROM inserted)
	END;