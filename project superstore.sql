CREATE DATABASE NEWPROJECT

USE NEWPROJECT

SELECT * FROM SUPERSTORE;

SELECT 
  FORMAT(Order_Date, 'yyyy-MM') AS Month, 
  SUM(Sales) AS TotalSales
FROM SUPERSTORE
GROUP BY FORMAT(Order_Date, 'yyyy-MM')
ORDER BY Month;

SELECT TOP 5 
    Sub_Category, 
    SUM(Profit) AS TotalProfit
FROM Superstore
GROUP BY Sub_Category
ORDER BY TotalProfit DESC;

SELECT 
  Region, 
  SUM(Sales) AS TotalSales, 
  SUM(Profit) AS TotalProfit
FROM SUPERSTORE
GROUP BY Region;


SELECT 
  Customer_Name, 
   SUM(Sales) AS TotalSpent, 
  COUNT(DISTINCT Order_ID) AS OrderCount
FROM SUPERSTORE
GROUP BY Customer_Name
ORDER BY TotalSpent DESC;
