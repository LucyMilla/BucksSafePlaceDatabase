MERGE INTO Incidents AS Target
USING (VALUES
		(1, 'Feeling Unwell', 'High Wycombe','2017-12-22', 'Illness', 'Unwell to walk home'),
		(2, 'Hurt', 'High Wycombe', '2017-12-10', 'Violence', 'Injured leg'),
		(3, 'No Way Home', 'High Wycombe', '2017-11-5', 'Stranded', 'lift by friend')
)
AS SOURCE (IncidentID, IncidentTitle, IncidentLocation, IncidentDate, Tag, Report)
ON Target.IncidentID = Source.IncidentID
WHEN NOT MATCHED BY TARGET THEN
INSERT (IncidentTitle, IncidentLocation, IncidentDate, Tag, Report)
VALUES (IncidentTitle, IncidentLocation, IncidentDate, Tag, Report);

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