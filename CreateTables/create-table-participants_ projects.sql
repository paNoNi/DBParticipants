CREATE TABLE participants_projects (
    participant_id integer NOT NULL,
    project_id text NOT NULL,
    time integer NOT NULL,
    FOREIGN KEY (participant_id) REFERENCES participants(participant_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
) 
