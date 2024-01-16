-- Get the total number of assistance_requests for a student

SELECT students.name, COUNT(assistance_requests.*) as total_assistances
FROM students
JOIN assistance_requests ON student_id = students.id
WHERE name = 'Elliot Dickinson'
GROUP BY name;
