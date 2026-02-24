# Write your MySQL query statement below
SELECT 
a.machine_id,
ROUND(AVG(b.timestamp-a.timestamp),3) as processing_time
FROM Activity a
, 
Activity b
WHERE
a.machine_id= b.machine_id
and
a.process_id=b.process_id
and
a.activity_type like 'start'
and b.activity_type like 'end'
GROUP BY machine_id;