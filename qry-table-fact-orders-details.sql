use CuboNortWnd

if (OBJECT_ID ('dbo.FactOrderDetails', 'U') > 0)
	drop table FactOrderDetails;

	
SELECT OrderID,ProductID,Quantity,UnitPrice, convert (varchar(50), ' ') EstratoPrecioProd,
Discount as OrderDiscount

into FactOrderDetails
FROM   NorthWnd.[dbo].[Order Details]
;

begin tran
	update FactOrderDetails set EstratoPrecioProd =
	( select e.Descripcion from NorthWndEstratos e 
		where UnitPrice >= e.LimiteInferior and UnitPrice < e.LimiteSuperior
		and e.TipoEstrato = 'PrecioUnidad'
		);

commit;