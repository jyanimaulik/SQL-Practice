/*
Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy: 

Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

Note: The tables may contain duplicate records.

Enter your query here.
*/

SELECT c.company_code, c.founder, COUNT(distinct e.lead_manager_code),COUNT(distinct e.senior_manager_code),COUNT(distinct e.manager_code),COUNT(distinct e.employee_code)
FROM Company c 
JOIN Employee e
ON c.company_code = e.company_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code asc;
