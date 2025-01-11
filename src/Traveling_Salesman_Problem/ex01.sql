WITH tours as (
    WITH RECURSIVE r as (
        SELECT point1, point2, cost, ARRAY[point1, point2] as arr
        FROM road
        WHERE point1 = 'a'

        UNION ALL

        SELECT road.point1, road.point2, road.cost + r.cost, (arr || road.point2)::character(1)[]
        FROM road
        JOIN r ON r.point2 = road.point1
        WHERE (ARRAY_LENGTH(arr, 1) < 4 and
             NOT(road.point2 = any(arr))) or (ARRAY_LENGTH(arr, 1) = 4)
    )
    SELECT "cost" as total_cost, arr as tour
    FROM r
    WHERE (ARRAY_LENGTH(arr, 1) = 5 and arr[5] = 'a'))
SELECT *
FROM tours
WHERE total_cost = (SELECT min(total_cost)
                    FROM tours)
UNION ALL

SELECT *
FROM tours
WHERE total_cost = (SELECT max(total_cost)
                    FROM tours)
ORDER BY 1,2;
