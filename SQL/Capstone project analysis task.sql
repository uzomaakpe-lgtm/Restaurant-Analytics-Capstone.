SELECT *
FROM Capstoneproject1

SELECT COUNT(*) AS TotalTransaction
FROM Capstoneproject1

SELECT SUM(Total_Amount) AS TotalRevenue
FROM Capstoneproject1

SELECT AVG(Total_Amount) AS AverageSalesAmount
FROM Capstoneproject1

SELECT MAX(Total_Amount) AS HighestSingleTransaction
FROM Capstoneproject1

SELECT MIN(Total_Amount) AS LowestSingleTransaction
FROM Capstoneproject1

SELECT SUM(Quantity) AS TotalQuantitySold
FROM Capstoneproject1

SELECT COUNT(DISTINCT Customer_Name) AS UniqueCustomers
FROM Capstoneproject1

SELECT COUNT(DISTINCT Dish_Ordered) AS UniqueFoodItems
FROM Capstoneproject1

SELECT TOP 1
  [Dish_Ordered],
  Price
FROM Capstoneproject1
ORDER BY Price DESC

SELECT TOP 1
  [Dish_Ordered],
  Price
FROM Capstoneproject1
ORDER BY Price ASC

SELECT
  Customer_Name,
  SUM(Total_Amount) AS Total_Spent
FROM Capstoneproject1
GROUP BY Customer_Name
ORDER BY Total_Spent DESC

SELECT TOP 10
 Customer_Name,
 SUM(Total_Amount) AS Revenue
FROM Capstoneproject1
GROUP BY Customer_Name
ORDER BY Revenue

SELECT 
 AVG(Customer_Total_Spent) AS Average_Customer_Spending
FROM (
 SELECT
   Customer_Name,
   SUM(Total_Amount) AS Customer_Total_Spent
 FROM Capstoneproject1
 GROUP BY Customer_Name
) AS CustomerSpending

SELECT TOP 1
 Customer_Name,
 SUM(Quantity) AS Total_Items_Ordered
FROM Capstoneproject1
GROUP BY Customer_Name
ORDER BY Total_Items_Ordered DESC

SELECT TOP 10
 [Dish_Ordered],
 SUM(Quantity) AS Total_Quantity_Sold
FROM Capstoneproject1
GROUP BY [Dish_Ordered]
ORDER BY Total_Quantity_Sold DESC

SELECT TOP 10
 [Dish_Ordered],
 SUM(Quantity) AS Total_Quantity_Sold
FROM Capstoneproject1
GROUP BY [Dish_Ordered]
ORDER BY Total_Quantity_Sold ASC


SELECT TOP 10
 [Dish_Ordered],
 SUM(Price * Quantity) AS Revenue
FROM Capstoneproject1
GROUP BY [Dish_Ordered]
ORDER BY Revenue DESC

SELECT 
 [Dish_Ordered],
 AVG(Quantity) AS Average_Quantity_Sold
FROM Capstoneproject1
GROUP BY [Dish_Ordered]
ORDER BY Average_Quantity_Sold DESC;

SELECT 
 [Visit_Date],
 SUM(Total_Amount) AS Total_Sales
FROM Capstoneproject1
GROUP BY [Visit_Date]
ORDER BY Total_Sales DESC;


