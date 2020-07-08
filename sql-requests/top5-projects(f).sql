WITH sum_rate AS (
    SELECT pr.name, count(pp.participant_id), sum(pp.time) as sumtime
    FROM participants_projects pp
    INNER JOIN projects pr on pp.project_id = pr.project_id
    INNER JOIN participants p on pp.participant_id = p.participant_id
    GROUP BY pr.name
)
SELECT *
FROM sum_rate
ORDER BY sum_rate.sumtime DESC
LIMIT 5 
