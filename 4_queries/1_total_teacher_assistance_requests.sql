-- Get the total number of assistance_requests for a teacher

SELECT teachers.name as name, COUNT(assistance_requests.*) as total_assistances
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
WHERE name = 'Waylon Boehm'
GROUP BY name;
