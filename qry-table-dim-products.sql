use CuboNortWnd

if (OBJECT_ID ('dbo.DimProducts', 'U') > 0)
	drop table DimProducts;


use NORTHWND

SELECT 
p.ProductID, p.CategoryID,p.SupplierID ,
p.ProductName + ' / ' + p.QuantityPerUnit  as ProductReport,
p.UnitsInStock as ProductStatus,  
p.ReorderLevel,
p.Discontinued,
p.UnitPrice as EstratoPrecioProd

into CuboNortWnd.dbo.DimProducts
FROM   Products p
