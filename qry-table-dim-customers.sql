use CuboNortWnd

if (OBJECT_ID ('dbo.DimCustomers', 'U') > 0)
	drop table DimCustomers;


use NORTHWND

SELECT 
c.CustomerID as IDCustomer,
c.ContactName + ' - ' + c.ContactTitle + ' - ' + c.CompanyName as CustomerInformation,
c.Address + ', ' + c.City + ', ' + c.Country as CustomerAddressInformation,
isnull(c.Phone + '/' + c.Fax, 'N/A') as CustomerContact

into CuboNortWnd.dbo.DimCustomers
FROM   Customers c
	