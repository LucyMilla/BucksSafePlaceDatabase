CREATE TABLE [dbo].[Incidents]
(
	[IncidentID] INT IDENTITY (1, 1) NOT NULL, 
    [IncidentTitle] NVARCHAR(25) NULL,
	[Firstname] NVARCHAR (25) NULL,
	[Lastname] NVARCHAR (25) NULL,
	[Report] TEXT NULL,
	PRIMARY KEY CLUSTERED ([IncidentID] ASC)

)
