# student_id is the primary key (column with unique values) for this table.
# Each row of this table contains the ID and the name of one student in the school.
# subject_name is the primary key (column with unique values) for this table.
# Each row of this table contains the name of one subject in the school.
# There is no primary key (column with unique values) for this table. It may contain duplicates.
# Each student from the Students table takes every course from the Subjects table.
# Each row of this table indicates that a student with ID student_id attended the exam of subject_name.

# Write a solution to find the number of times each student attended each exam.

# Return the result table ordered by student_id and subject_name.

# The result format is in the following example.



# Write your MySQL query statement below

SELECT st.student_id, st.student_name, su.subject_name, count(e.student_id) as attended_exams
FROM Students st
CROSS JOIN Subjects su
LEFT JOIN Examinations e
ON st.student_id = e.student_id AND su.subject_name = e.subject_name
GROUP BY st.student_id, st.student_name, su.subject_name
ORDER BY st.student_id, su.subject_name
