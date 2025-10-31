USE `awesome chocolates`;
SHOW DATABASES;

SELECT * FROM sales
WHERE Amount >2000 AND Boxes <100;

/*How many shipments (sales) each of the sales persons had in the month of January 2022?*/
SELECT * FROM Sales;
SELECT * FROM people;

SELECT p.salesperson, SUM(s.Amount) AS TotalSales
FROM Sales AS s
JOIN People AS p
  ON s.SPID = p.SPID
WHERE s.saledate >= '2022-01-01' AND s.saledate <= '2022-01-31'
GROUP BY p.salesperson;

/*Total count of sale person by region*/

SELECT Location,COUNT(Salesperson)
FROM people
GROUP BY Location;

/*3. Which product sells more boxes? Milk Bars or Eclairs?*/

SELECT * FROM Products
where product = "eclairs";

SELECT * FROM Sales;

SELECT  p.product,SUM(s.Boxes) as "Count of Boxes"
FROM Sales as s
JOIN products as p
on s.pid = p.pid
WHERE p.product IN ("ECLAIRS","Milk Bars")
GROUP BY p.product;


/*4. Which product sold more boxes in the first 7 days of February 2022? Milk Bars or Eclairs?*/

SELECT * FROM products;
SELECT * FROM Sales;

SELECT pd.product,sum(s.boxes)
FROM Sales as s
JOIN products as pd
ON s.pid = pd.pid
WHERE pd.Product IN ("Milk Bars","Eclairs") AND s.SaleDate BETWEEN "2022-02-01" AND "2022-02-07"
GROUP BY pd.product
ORDER BY pd.product DESC;




SELECT * FROM geo;


















































