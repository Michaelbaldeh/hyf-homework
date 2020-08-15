--Get all the tasks assigned to users whose email ends in @spotify.com
SELECT * from user
WHERE email like '%@spotify.com';

-- Get all the tasks for 'Donald Duck' with status 'Not started'
SELECT  task.* from task
join user on user.name ="Donald Duck" and user.id = task.user_id
join status on status.name ='Not started' and status.id = task.status_id;

-- Get all the tasks for 'Maryrose Meadows' that were created in september (hint: month(created)=month_number)
SELECT  task.* from task

join user on user.name ="Maryrose Meadows" and user.id = task.user_id
WHERE month(task.created) = 9;

-- Find how many tasks where created in each month7
 SELECT  month(created) month ,
 COUNT(*) as tasks
 FROM task

GROUP BY  month(created)
ORDER BY month asc;
