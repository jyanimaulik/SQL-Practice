# id is the primary key (column with unique values) for this table.
# Each row contains information about the name of a movie, its genre, and its rating.
# rating is a 2 decimal places float in the range [0, 10]


# Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".
# Return the result table ordered by rating in descending order.
# The result format is in the following example.

# Write your MySQL query statement below

SELECT id, movie, description, rating
FROM Cinema
WHERE description!='boring' AND id%2<>0
ORDER BY rating DESC;
