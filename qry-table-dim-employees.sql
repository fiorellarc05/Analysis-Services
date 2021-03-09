use CuboNortWnd

if (OBJECT_ID ('dbo.DimEmployees', 'U') > 0)
	drop table DimEmployees;


use NORTHWND
SELECT 
e.EmployeeID, e.LastName, e.FirstName, e.Title, e.TitleOfCourtesy, 
e.TitleOfCourtesy + ' ' + e.FirstName + ' ' +  e.LastName as FullFirstNameLastName,
e.LastName  + ', ' + e.FirstName as FullLastNameFirstName, 
isnull(e.ReportsTo, -1) as ReportsTo ,
isnull(r.TitleOfCourtesy + ' ' + r.FirstName + ' ' +  r.LastName, 'N/A') as ReportsToFullFirstNameLastName,
LEFT(e.LastName, 1) as LastNameInitial,
LEFT(e.FirstName, 1) as FirstNameInitial,
e.HireDate, 
datediff(year, e.HireDate, getdate()) as Antiquity,
e.BirthDate, e.City, 
datediff(year, e.BirthDate, getdate()) as YearsOfAge,
isnull(e.Region,'N/A') as Region, 
e.Country,
'N/A' as EstratoAntiguedad ,
'N/A' as EstratoEdad 
into CuboNortWnd.dbo.DimEmployees
FROM   Employees e
	left outer join Employees r
		on r.EmployeeID = e.ReportsTo