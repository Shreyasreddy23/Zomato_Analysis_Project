create database zomato_dashboard;
select count(*) from zomato;
SELECT COUNT(RestaurantID) AS total_restaurants
FROM zomato;
SELECT AVG(rating) AS average_rating
FROM zomato;
SELECT SUM(Votes) AS total_voters
FROM zomato;
SELECT COUNT(DISTINCT City) AS total_cities
FROM zomato;
SELECT COUNT(DISTINCT Country_Name) AS total_countries
FROM zomato;
SELECT COUNT(Cuisines) AS total_cuisines
FROM zomato;
SELECT 
    Country_Name,
    COUNT(*) AS restaurant_count
FROM zomato
GROUP BY Country_Name
ORDER BY restaurant_count DESC
LIMIT 10;
SELECT 
    Cuisines,
    COUNT(*) AS cuisine_count
FROM zomato
GROUP BY Cuisines
ORDER BY cuisine_count DESC
LIMIT 10;
SELECT 
    City,
    COUNT(*) AS restaurant_count
FROM zomato
GROUP BY City
ORDER BY restaurant_count DESC
limit 5 ;
SELECT 
    `Month Name`,
    COUNT(*) AS restaurant_count
FROM zomato
GROUP BY `Month Name`
ORDER BY 
    FIELD(`Month Name`,
        'January','February','March','April','May','June',
        'July','August','September','October','November','December'
    );
SELECT 
    Quarter,
    COUNT(*) AS restaurant_count
FROM zomato
GROUP BY Quarter
ORDER BY 
    FIELD(Quarter, 'Q-1','Q-2','Q-3','Q-4');
SELECT 
    Year,
    COUNT(*) AS restaurant_count
FROM zomato
GROUP BY Year
ORDER BY Year;
SELECT 
    CASE
        WHEN  rating BETWEEN 0 AND 2 THEN '0 - 2'
        WHEN rating > 2 AND rating <= 3 THEN '2.1 - 3'
        WHEN  rating > 3 AND  rating <= 4 THEN '3.1 - 4'
        WHEN  rating > 4 AND  rating <= 5 THEN '4.1 - 5'
        ELSE 'Unknown'
    END AS rating_range,
    COUNT(*) AS restaurant_count
FROM zomato
GROUP BY rating_range
ORDER BY rating_range;