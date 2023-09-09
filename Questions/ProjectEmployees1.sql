# Write an SQL query that reports the average experience years of all the employees for each project, rounded to 2 digits.
# Return the result table in any order.
# The query result format is in the following example.

# Write your MySQL query statement below

SELECT p.project_id, ROUND(SUM(e.experience_years)/COUNT(p.project_id),2) as average_years
FROM Project p, Employee e
WHERE p.employee_id = e.employee_id
GROUP BY p.project_id
