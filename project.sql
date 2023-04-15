show databases;
use datalab;
select * from actions2load;

desc actions2load;
SELECT count(*) FROM actions2load; 

SELECT COUNT(DISTINCT account_id) FROM actions2load;
SELECT COUNT(account_id) FROM actions2load;

-- What events are most common?
 SELECT event_type, COUNT(*) as event_count
    FROM actions2load
    GROUP BY event_type
    ORDER BY event_count DESC;
    
-- What events are least common?
SELECT event_type, COUNT(*) as event_count
FROM actions2load
GROUP BY event_type
ORDER BY event_count ASC;

-- The account id with the highest number of events
SELECT account_id, COUNT(*) as event_count
FROM actions2load
GROUP BY account_id
ORDER BY event_count DESC
LIMIT 1;

-- The account id with the least number of events.
SELECT account_id, COUNT(*) AS event_count
FROM actions2load
GROUP BY account_id
ORDER BY event_count ASC
LIMIT 1;

-- How many times events occurred based on different times of the day?
SELECT DATE_FORMAT(event_time, '%H:%i') AS time_of_day, COUNT(*) AS event_count
FROM actions2load
GROUP BY time_of_day
ORDER BY time_of_day ASC;


