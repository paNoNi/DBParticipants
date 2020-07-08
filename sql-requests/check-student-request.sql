SELECT pr.name, pp.time
FROM projects pr
INNER JOIN participants_projects pp on pr.project_id = pp.project_id
INNER JOIN participants p on pp.participant_id = p.participant_id
WHERE p.name = 'Ваня' and p.surname = 'Иванов' 
