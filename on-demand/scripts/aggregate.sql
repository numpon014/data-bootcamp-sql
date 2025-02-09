-- Aggregate Functions
SELECT ROUND(AVG(milliseconds), 2) AS avg_mill,
       SUM(milliseconds)           AS sum_mill,
       MIN(milliseconds)           AS min_mill,
       MAX(milliseconds)           AS max_mill,
       COUNT(milliseconds)         AS count_mill
FROM tracks;