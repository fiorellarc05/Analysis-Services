use CuboNortWnd

if (OBJECT_ID ('dbo.DimProducts', 'U') > 0)
	drop table DimProducts;


use NORTHWND

SELECT 
/*p.ProductID + ' ' + p.ProductName + ' ' + p.CategoryID as FullProductName,
p.QuantityPerUnit + ' ' + p.UnitsOnOrder as ProductReport, */
/*p.UnitsOnOrder, convert (varchar(50), ' ') OrderUnits, */
p.ProductName + ' ' + p.QuantityPerUnit /*+ ' ' + OrderUnits*/ as ProductReport,
p.UnitsInStock + ' ' + p.ReorderLevel  as ProductStatus, 
p.UnitPrice as EstratoPrecioProd

into CuboNortWnd.dbo.DimProducts
FROM   Products p
	