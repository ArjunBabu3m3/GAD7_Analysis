----SQL Assessment: Neuroflow----
--Arjun Babu

--1. How many users completed an exercise in their first month per monthly cohort?

--I am assuming a month has 30 days for our case.  I am writing the query in MS SQL SERVER
WITH cnt_exercise_completion (year, month, count_exercise_completion) AS 
(SELECT YEAR (created_at) year, MONTH(created_at) month, e.exercise_completion_date,
 COUNT(e.exercise_completion_date) count_exercise_completion
FROM users u
JOIN exercises e
ON u.user_id = e.user_id
WHERE datediff(exercise_completion_date,u.created_at, day) <=30
Group by YEAR (created_at) , month(created_at)
),
monthly_cohort_CTE (year, month, cohort_cnt) AS(
SELECT YEAR(created_at) year, month(created_at) month, COUNT(*) cohort_cnt
FROM users u
JOIN exercises e
ON u.user_id = e.user_id
Group by YEAR (created_at) , month(created_at)
),

SELECT  m.year, m.month, c.exercise_completion_date*100/m.cohort_cnt  AS Exercise_completion_percentage
FROM monthly_cohort_CTE m
JOIN cnt_exercise_completion c
ON m.year = c.year AND m.month = c.month;


/*Here .exercise_completion_date*100/m.cohort_cnt
Can be written as 
FORMAT(n.exercise_completion_date/m.cohort_cnt, 'P') to get the percentage sign if needed. */

--———————————————————————————————————————————————————————————————————————————
--2. How many users completed a given amount of exercises?
--AS PER THE TEXT QUESTION GIVEN,

SELECT u.user_id, COUNT(e.exercise_completion_date) AS activity_completed
FROM users u 
JOIN exercises e
ON u.user_id = e.user_id
GROUP BY u.user_id;

---OR-
--AS PER THE EXAMPLE GIVEN

WITH ACT_CTE (user_id, cnt_activity_completed) AS
(SELECT u.user_id, COUNT(e.exercise_completion_date) AS cnt_activity_completed
FROM users u 
JOIN exercises e
ON u.user_id = e.user_id
GROUP BY u.user_id)

SELECT cnt_activity_completed, COUNT(user_id) AS num_users
FROM ACT_CTE
GROUP BY activity_completed;

--#I can try and create bins but this could work as a quick work around

--———————————————————————————————————————————————————————————————————————————
--3. Which organizations have the most severe patient population?

SELECT TOP 5 P.organization_name, AVG(PHQ.score) AS score_per_patient
FROM Providers P
JOIN  Phq9 PHQ
ON P.provider_id = PHQ.provider_id
GROUP BY P.organization_name  ORDER BY AVG(PHQ.score) DESC;