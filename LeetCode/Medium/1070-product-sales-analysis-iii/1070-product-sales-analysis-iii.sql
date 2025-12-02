# Write your MySQL query statement below

SELECT p.product_id, x.first_year, s.quantity, s.price
FROM Product p
JOIN (SELECT product_id, MIN(year) AS first_year 
      FROM Sales
      GROUP BY product_id) AS x
ON p.product_id = x.product_id
JOIN Sales s ON s.product_id = x.product_id AND s.year = x.first_year;

# This is another query but got Time Limit Exceeded
-- SELECT 
--     x.p AS product_id, 
--     x.first_year, 
--     s.quantity, 
--     s.price
-- FROM 
--     (SELECT DISTINCT 
--         product_id AS p, 
--         (SELECT MIN(year) 
--          FROM sales 
--          WHERE product_id = p) AS first_year 
--      FROM Product 
--      JOIN Sales USING(product_id)
--     ) AS x
-- JOIN 
--     sales s 
-- ON 
--     s.product_id = x.p 
--     AND s.year = x.first_year;
