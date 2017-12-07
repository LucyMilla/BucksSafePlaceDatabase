MERGE INTO Course AS Target 
USING (VALUES 
        (1, 'Economics', 3), 
        (2, 'Literature', 3), 
        (3, 'Chemistry', 4)
) 
AS Source (CourseID, Title, Credits) 
ON Target.CourseID = Source.CourseID 
WHEN NOT MATCHED BY TARGET THEN 
INSERT (Title, Credits) 
VALUES (Title, Credits);

MERGE INTO Incidents AS Target
USING (VALUES
		(1, 'Feeling Unwell', 'Donnie', 'Tibbettes'),
		(2, 'Hurt', 'Ben', 'Ten'),
		(3, 'No Way Home', 'Dan', 'Trek')
)
AS SOURCE (IncidentID, Title, Firstname, Lastname)
ON Target.IncidentID = Source.IncidentID
WHEN NOT MATCHED BY TARGET THEN
INSERT (Title, Firstname, Lastname)
VALUES (Title, Firstname, Lastname);