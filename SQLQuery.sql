-- Count the number of athletes from each country:
SELECT Country, COUNT(*) AS TotalAthletes
FROM athletes
GROUP BY Country
ORDER BY TotalAthletes DESC;

-- Calulate the total medals won by each country:
SELECT
Team,
SUM(Gold) Total_Gold,
SUM(Silver) Total_Silver,
SUM(Bronze) Total_Bronze
FROM medals
GROUP BY Team
ORDER BY Total_Gold DESC;

-- Calculate the average number of entries by gender for each discipline:
SELECT Discipline,
AVG(Female) Avg_Female,
AVG(male) Avg_Male
FROM entriesgender
GROUP BY Discipline;