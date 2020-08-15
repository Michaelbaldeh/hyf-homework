-- Add a task with these attributes:
-- (title, description, created, updated, due_date, status_id, user_id)
INSERT INTO task
  ( title, description, created, updated, due_date, status_id, user_id)
VALUES(36, "Coffe time", "Meet with friends and have coffee together", NOW(), "2020-12-31 23:59:59", "2022-01-01 00:00:01", 2, 1);

-- Change the title of a task
UPDATE task
SET  title="Travel to Mexico" WHERE id="36";

-- Change a task due date
UPDATE task
 SET due_date="2022-02-01 15:30:00" WHERE id="36";

-- Change a task status
UPDATE task
 SET status_id="2" WHERE id="36";

-- Mark a task as complete
UPDATE task
SET id="3" WHERE id="36";

-- Delete a task
DELETE from task
ORDER BY id DESC
LIMIT 1;

SELECT *
FROM task; 