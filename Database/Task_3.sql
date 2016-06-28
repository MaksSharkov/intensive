ALTER TABLE Tasks 
ADD CONSTRAINT FK_Tasks_Project FOREIGN KEY (project_id)
	REFERENCES Projects (id)
	ON DELETE CASCADE
	ON UPDATE CASCADE
	
ALTER TABLE TaskTags
ADD CONSTRAINT FK_TasksTags_TaskId FOREIGN KEY (task_id)
	REFERENCES Tasks (id)
	ON DELETE CASCADE
	ON UPDATE CASCADE

ALTER TABLE TaskTags
ADD CONSTRAINT FK_TasksTags_TadId FOREIGN KEY (tag_id)
	REFERENCES Tags (id)
	ON DELETE CASCADE
	ON UPDATE CASCADE