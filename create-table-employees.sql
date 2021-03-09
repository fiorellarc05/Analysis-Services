USE [CuboNortWnd]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DimEmployees]') AND type in (N'U'))
DROP TABLE [dbo].[DimEmployees]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimEmployees](
	[EmployeeID] [int] NULL,
	[LastName] [nvarchar](50)  NULL,
	[FirstName] [nvarchar](50)  NULL,
	[Title] [nvarchar](50) NULL,
	[TitleOfCourtesy] [nvarchar](25) NULL,
	[FullFirstNameLastName] [nvarchar](100) NULL,
	[FullLastNameFirstName] [nvarchar](100)  NULL,
	[ReportsTo] [int]  NULL,
	[ReportsToFullFirstNameLastName] [nvarchar](100)  NULL,
	[LastNameInitial] [nvarchar](1) NULL,
	[FirstNameInitial] [nvarchar](1) NULL,
	[HireDate] [datetime] NULL,
	[Antiquity] [int] NULL,
	[BirthDate] [datetime] NULL,
	[City] [nvarchar](50) NULL,
	[YearsOfAge] [int] NULL,
	[Region] [nvarchar](50)  NULL,
	[Country] [nvarchar](50) NULL,
	[EstratoAntiguedad] [varchar](100)  NULL,
	[EstratoEdad] [varchar](100)  NULL
) ON [PRIMARY]
GO