-- Primera query
SELECT *
FROM netflix_titles
WHERE field6 = 'Argentina';

-- Segunda query
WITH produccion_paises AS (
    SELECT field6, COUNT(*) AS total_titulos
    FROM netflix_titles
    WHERE field6 IS NOT NULL
    GROUP BY field6
)
SELECT * 
FROM produccion_paises
ORDER BY total_titulos DESC
LIMIT 10;
-- Tercera query

SELECT field8, COUNT(*) AS total_titulos
FROM netflix_titles
GROUP BY field8
ORDER BY total_titulos DESC
LIMIT 1;