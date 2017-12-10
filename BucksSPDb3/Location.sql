CREATE TABLE [dbo].[Location]
(
	[LocationID] INT IDENTITY (1, 1) NOT NULL, 
    [BusinessName] NVARCHAR(20) NULL, 
    [BusinessAddress] NVARCHAR(50) NULL,
	[Postcode] NVARCHAR(7) NULL,
	[TelephoneNumber] INT NULL,
	PRIMARY KEY CLUSTERED ([LocationID] ASC)

)
