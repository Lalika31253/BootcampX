-- Calculate the average total duration of assistance requests for each cohort

SELECT AVG(average_total_duration)
FROM (
SELECT cohorts.name as cohort, SUM(assistance_requests.completed_at-assistance_requests.started_at) as average_total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_total_duration)
as average_total_duration;
