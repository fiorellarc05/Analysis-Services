USE [CuboNortWnd]
GO


IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DimCustomers]') AND type in (N'U'))
DROP TABLE [dbo].[DimCustomers]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimCustomers](
	[CustomerID] [int] NULL,
	[CompanyName] [nvarchar](50)  NULL,
	[ContactName] [nvarchar](50)  NULL,
	[ContactTitle] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[Region] [nvarchar](50)  NULL,
	[PostalCode] [nvarchar](50)  NULL,
	[Country] [nvarchar](50)  NULL,
	[Phone] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL
) ON [PRIMARY]
GO