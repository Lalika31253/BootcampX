-- Get currently enrolled students' average assignment completion time

SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE end_date IS NULL
GROUP BY students.name
ORDER BY average_assignment_duration DESC;

