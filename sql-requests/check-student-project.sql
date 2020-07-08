SELECT p.name, p.surname, p.patronymic, pp.time
FROM participants p
INNER JOIN participants_projects pp on p.participant_id = pp.participant_id
WHERE pp.project_id = 'E2' 
