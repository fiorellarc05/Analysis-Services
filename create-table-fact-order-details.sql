USE [CuboNortWnd]
GO


IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactOrderDetails]') AND type in (N'U'))
DROP TABLE [dbo].[FactOrderDetails]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactOrderDetails](
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[UnitPrice] [money] NULL,
	[Quantity] [smallint] NULL,
	[Discount] [real] NULL
	
) ON [PRIMARY]
GO