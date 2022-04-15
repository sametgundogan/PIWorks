/*
Although I struggled for a whole day to find the right solution, this is the nearest solution I found. I know it's not right, but an answer at least...
*/

UPDATE country_vaccination_stats
SET daily_vaccinations = ROUND(COALESCE(daily_vaccinations,  (SELECT MEDIAN(daily_vaccinations) FROM country_vaccination_stats GROUP BY country)));

SELECT *
FROM country_vaccination_stats;
