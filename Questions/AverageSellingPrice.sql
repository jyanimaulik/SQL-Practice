# (product_id, start_date, end_date) is the primary key for this table.
# Each row of this table indicates the price of the product_id in the period from start_date to end_date.
# For each product_id there will be no two overlapping periods. That means there will be no two intersecting periods for the same product_id.

# There is no primary key for this table, it may contain duplicates.
# Each row of this table indicates the date, units, and product_id of each product sold. 

# Write an SQL query to find the average selling price for each product. average_price should be rounded to 2 decimal places.
# Return the result table in any order.
# The query result format is in the following example.

# Write your MySQL query statement below

SELECT p.product_id, 
ROUND(SUM(p.price*us.units)/SUM(us.units),2) as average_price
FROM Prices p, UnitsSold us
WHERE p.product_id = us.product_id
AND DATEDIFF(p.start_date,us.purchase_date) <= 0
AND DATEDIFF(p.end_date,us.purchase_date) >= 0
GROUP BY p.product_id
