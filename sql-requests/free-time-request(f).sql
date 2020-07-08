WITH free_time AS (
    SELECT pp.participant_id, sum(pp.time) as b_time
    FROM participants_projects pp
    GROUP BY pp.participant_id
)
SELECT p.surname, p.name, p.patronymic, 100 - ft.b_time as free_time
FROM free_time ft
INNER JOIN participants p on ft.participant_id = p.participant_id 
