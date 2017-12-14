﻿MERGE INTO Incidents AS Target
USING (VALUES
		(1, 'Feeling Unwell', 'Donnie', 'Tibbettes','Unwell to walk home'),
		(2, 'Hurt', 'Ben', 'Ten','Injured leg'),
		(3, 'No Way Home', 'Dan', 'Trek', 'lift by friend')
)
AS SOURCE (IncidentID, IncidentTitle, Firstname, Lastname, Report)
ON Target.IncidentID = Source.IncidentID
WHEN NOT MATCHED BY TARGET THEN
INSERT (IncidentTitle, Firstname, Lastname, Report)
VALUES (IncidentTitle, Firstname, Lastname, Report);

MERGE INTO Location AS Target
USING (VALUES
		(1, 'Rustys', ' 123 Fake Rd.', 'HW01 111', '0000121356'),
		(2, 'Mcdonalds', ' 126 Fake Rd.', 'HW01 123', '00000225478'),
		(3, 'Coffee Place', ' 129 Fake Rd.', 'HW01 125', '0000471569')
		)
		AS SOURCE (LocationID, BusinessName, BusinessAddress, Postcode, TelephoneNumber)
		ON Target.LocationID = Source.LocationID
		WHEN NOT MATCHED BY TARGET THEN
		INSERT(BusinessName, BusinessAddress, Postcode, TelephoneNumber)
		VALUES(BusinessName, BusinessAddress, Postcode, TelephoneNumber);