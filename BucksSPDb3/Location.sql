CREATE TABLE [dbo].[Location]
(
	[LocationID] INT IDENTITY (1, 1) NOT NULL, 
    [BusinessName] NVARCHAR(20) NULL, 
    [BusinessAddress] TEXT NULL,
	[Postcode] NVARCHAR(10) NULL,
	[TelephoneNumber] INT NULL,
	PRIMARY KEY CLUSTERED ([LocationID] ASC)

)
