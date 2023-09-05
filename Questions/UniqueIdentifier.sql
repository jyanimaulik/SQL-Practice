#Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.

#Return the result table in any order.

#The result format is in the following example.

# Write your MySQL query statement below
select unique_id, name from Employees as e
left join EmployeeUNI as c
on e.id = c.id
  
