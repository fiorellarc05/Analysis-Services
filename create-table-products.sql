USE [CuboNortWnd]
GO


IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DimProducts]') AND type in (N'U'))
DROP TABLE [dbo].[DimProducts]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimProducts](
	[ProductID] [int] NULL,
	[ProductName] [nvarchar](50)  NULL,
	[QuantityPerUnit] [nvarchar](50)  NULL,
	[TUnitPrice] [money] NULL,
	[UnitsInStock] [smallint] NULL,
	[UnitsOnOrder] [smallint] NULL,
	[ReorderLevel] [smallint] NULL,
	[Discontinued] [bit]  NULL
) ON [PRIMARY]
GO