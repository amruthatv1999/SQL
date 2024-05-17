USE  amrutha;
SELECT * FROM csv2sql_0575
LIMIT 5;
-- 1)What are total sales and total profits of each year?
SELECT 
    YEAR(OrderDate) AS Year,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit
FROM 
   csv2sql_0575
GROUP BY 
    YEAR
ORDER BY 
    Year asc;
    -- 2. What are the total profits and total sales per quarter?
    
SELECT 
    YEAR(OrderDate) AS Year,
    QUARTER(OrderDate) AS Quarter,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit
FROM 
     csv2sql_0575
GROUP BY 
    YEAR(OrderDate), QUARTER(OrderDate)
ORDER BY 
    Year, Quarter;
    -- 3. What region generates the highest sales and profits ?
    SELECT
    region,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profits
FROM
    csv2sql_0575
GROUP BY
    region
ORDER BY
    total_profits DESC;
    -- 4)  What state and city brings in the highest sales and profits ?
    SELECT
    State,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profits,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS profit_mar
FROM
    csv2sql_0575
GROUP BY
    State
ORDER BY
    Total_Profits DESC
LIMIT 10;
-- 5)The relationship between discount and sales and the total discount per category
SELECT Discount, AVG(Sales) AS Avg_Sales
FROM csv2sql_0575
GROUP BY Discount
ORDER BY Discount;
-- 6. What category generates the highest sales and profits in each region and state ?
SELECT category, SUM(sales) AS total_sales, SUM(profit) AS total_profit, ROUND(SUM(profit)/SUM(sales)*100, 2) AS profit_margin
FROM csv2sql_0575
GROUP BY category
ORDER BY total_profit DESC;
-- 7. What subcategory generates the highest sales and profits in each region and state ?

SELECT subcategory, SUM(sales) AS total_sales, SUM(profit) AS total_profit, ROUND(SUM(profit)/SUM(sales)*100, 2) AS profit_marg
FROM csv2sql_0575
GROUP BY subcategory
ORDER BY total_profit DESC;
-- 8. What are the names of the products that are the most and least profitable 
SELECT productname, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM csv2sql_0575
GROUP BY productname ORDER BY total_profit DESC;
-- 9. What segment makes the most of our profits and sales ?
SELECT segment, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM csv2sql_0575
GROUP BY segment
ORDER BY total_profit DESC;











    
    



