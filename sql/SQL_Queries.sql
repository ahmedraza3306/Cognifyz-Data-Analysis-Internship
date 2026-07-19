-- Query 1
SELECT COUNT(*) AS Total_Restaurants
FROM dataset;

-- Query 2
SELECT City,
       COUNT(*) AS Total_Restaurants
FROM dataset
GROUP BY City
ORDER BY Total_Restaurants DESC
LIMIT 10;

-- Query 3
SELECT City,
       ROUND(AVG(`Aggregate rating`),2) AS Average_Rating
FROM dataset
GROUP BY City
ORDER BY Average_Rating DESC;

-- Query 4
SELECT `Price range`,
       COUNT(*) AS Restaurants
FROM dataset
GROUP BY `Price range`;

-- Query 5
SELECT `Has Online delivery`,
       COUNT(*) AS Total
FROM dataset
GROUP BY `Has Online delivery`;

-- Query 6
SELECT `Has Table booking`,
       COUNT(*) AS Total
FROM dataset
GROUP BY `Has Table booking`;

-- Query 7
SELECT `Rating text`,
       COUNT(*) AS Total
FROM dataset
GROUP BY `Rating text`;

-- Query 8
SELECT `Restaurant Name`,
       City,
       `Aggregate rating`
FROM dataset
ORDER BY `Aggregate rating` DESC
LIMIT 10;

-- Query 9
SELECT `Restaurant Name`,
       Votes
FROM dataset
ORDER BY Votes DESC
LIMIT 10;

-- Query 10
SELECT City,
       ROUND(AVG(`Average Cost for two`),2) AS Average_Cost
FROM dataset
GROUP BY City
ORDER BY Average_Cost DESC;

-- Query 11
SELECT City,
       COUNT(*) AS Online_Restaurants
FROM dataset
WHERE `Has Online delivery`='Yes'
GROUP BY City
ORDER BY Online_Restaurants DESC;