use CuboNortWnd

if (OBJECT_ID ('dbo.FactOrders', 'U') > 0)
	drop table FactOrders;

SELECT OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, Freight, ShipName, ShipCity, 
isnull(ShipRegion,'N/A') as ShipRegion, 
ShipCountry, convert (varchar(50), ' ') EstratoFlete
into FactOrders
FROM   NorthWnd.dbo.Orders
;

begin tran
	update FactOrders set EstratoFlete =
	( select e.Descripcion from NorthWndEstratos e 
		where Freight >= e.LimiteInferior and Freight < e.LimiteSuperior
		and e.TipoEstrato = 'OrdenFlete'
		);

commit;