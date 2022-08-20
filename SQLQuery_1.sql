WITH hotels as (
SELECT * FROM dbo.year_2018
UNION                                                 
SELECT * FROM dbo.year_2019
UNION
SELECT * FROM dbo.year_2020
)

SELECT * FROM hotels LEFT JOIN dbo.market_segment ON
 hotels.market_segment = market_segment.market_segment
LEFT JOIN dbo.meal_cost ON meal_cost.meal = hotels.meal
