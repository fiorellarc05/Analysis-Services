USE [CuboNortWnd]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NorthWndEstratos]') AND type in (N'U'))
DROP TABLE [dbo].NorthWndEstratos
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
create table NorthWndEstratos
(
	IdEstrato int primary key,
	TipoEstrato varchar (50),
	LimiteInferior float,
	LimiteSuperior float,
	Descripcion varchar (50)
);

begin tran
	insert into NorthWndEstratos (IdEstrato, TipoEstrato, LimiteInferior, LimiteSuperior, Descripcion) values
		(100, 'OrdenFlete', -99999999999, 0, 'Invalido');
	insert into NorthWndEstratos (IdEstrato, TipoEstrato, LimiteInferior, LimiteSuperior, Descripcion) values
		(200, 'OrdenFlete', 0, 11.8, 'Desde $0 hasta $11.8');
	insert into NorthWndEstratos (IdEstrato, TipoEstrato, LimiteInferior, LimiteSuperior, Descripcion) values
		(300, 'OrdenFlete', 11.8, 19.45, 'Desde $11.8 hasta $19.45');
	insert into NorthWndEstratos (IdEstrato, TipoEstrato, LimiteInferior, LimiteSuperior, Descripcion) values
		(400, 'OrdenFlete', 19.45, 81.91, 'Desde $19.45 hasta $81.91');
	insert into NorthWndEstratos (IdEstrato, TipoEstrato, LimiteInferior, LimiteSuperior, Descripcion) values
		(500, 'OrdenFlete', 81.91, 99999999999, 'Desde $81.91 en adelante');
	insert into NorthWndEstratos (IdEstrato, TipoEstrato, LimiteInferior, LimiteSuperior, Descripcion) values
		(3100, 'EmpleadoAntiguedad', -99999999999, 0, 'Invalido');
	insert into NorthWndEstratos (IdEstrato, TipoEstrato, LimiteInferior, LimiteSuperior, Descripcion) values
		(3200, 'EmpleadoAntiguedad', 0, 3, 'Desde 0 hasta 3 a�os');
	insert into NorthWndEstratos (IdEstrato, TipoEstrato, LimiteInferior, LimiteSuperior, Descripcion) values
		(3300, 'EmpleadoAntiguedad', 3, 5, 'Desde 3 hasta 5 a�os');
	insert into NorthWndEstratos (IdEstrato, TipoEstrato, LimiteInferior, LimiteSuperior, Descripcion) values
		(3400, 'EmpleadoAntiguedad', 5, 9, 'Desde 5 hasta 9 a�os');
	insert into NorthWndEstratos (IdEstrato, TipoEstrato, LimiteInferior, LimiteSuperior, Descripcion) values
		(3500, 'EmpleadoAntiguedad', 9, 99999999999, 'Desde 9 a�os en adelante');
	insert into NorthWndEstratos (IdEstrato, TipoEstrato, LimiteInferior, LimiteSuperior, Descripcion) values
		(1, 'PrecioUnidad', -99999999999, 0, 'Invalido');
	insert into NorthWndEstratos (IdEstrato, TipoEstrato, LimiteInferior, LimiteSuperior, Descripcion) values
		(2, 'PrecioUnidad', 0, 1000, 'Desde $0 hasta $1000');
	insert into NorthWndEstratos (IdEstrato, TipoEstrato, LimiteInferior, LimiteSuperior, Descripcion) values
		(3, 'PrecioUnidad', 1000, 5000, 'Desde $1000 hasta $5000');
	insert into NorthWndEstratos (IdEstrato, TipoEstrato, LimiteInferior, LimiteSuperior, Descripcion) values
		(4, 'PrecioUnidad', 5000, 10000, 'Desde $5000 hasta $10000');
	insert into NorthWndEstratos (IdEstrato, TipoEstrato, LimiteInferior, LimiteSuperior, Descripcion) values
		(5, 'PrecioUnidad', 10000, 99999999999, 'Desde $10000 en adelante');
commit;