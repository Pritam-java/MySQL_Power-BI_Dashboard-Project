create schema mobile_analysis_2023;
use mobile_analysis_2023;
SELECT 
    *
FROM
    mobile;
-- Check mobile features and price list
SELECT 
    phone_name, price
FROM
    mobile;

-- Find out the price of 5 most expensive phones
SELECT 
    *
FROM
    mobile
ORDER BY price DESC
LIMIT 5;

-- Find out the price of 5 most cheapest phones
SELECT 
    *
FROM
    mobile
ORDER BY price ASC
LIMIT 5;

-- List of top 5 Samsung phones with price and all features

SELECT 
    *
FROM
    mobile
WHERE
    Brands = 'samsung'
ORDER BY Price DESC
LIMIT 5;

-- Must have android phone list then top 5 High price android phones

SELECT 
    *
FROM
    mobile
WHERE
    Operating_System_Type = 'android'
ORDER BY price DESC
LIMIT 5;

-- Must have android phone list then top 5 lower price android phones

SELECT 
    *
FROM
    mobile
WHERE
    Operating_System_Type = 'android'
ORDER BY price ASC
LIMIT 5;
 -- Must have IOS phone list then top 5 high price IOS phones
 
SELECT 
    *
FROM
    mobile
WHERE
    Operating_System_Type = 'IOS'
ORDER BY price DESC
LIMIT 5;
 
 -- Must have IOS phone list then top 5 lower price IOS phones
 
SELECT 
    *
FROM
    mobile
WHERE
    Operating_System_Type = 'IOS'
ORDER BY price ASC
LIMIT 5;
 
 -- Write a query which phone support 5g and also top 5 phone with 5g support
 
SELECT 
    *
FROM
    mobile
WHERE
    5G_Availability = 'Yes'
ORDER BY Price DESC
LIMIT 5;
 
 -- Total price of all mobiles is to be found with brand name
 
SELECT 
    brands, SUM(price)
FROM
    mobile
GROUP BY Brands;