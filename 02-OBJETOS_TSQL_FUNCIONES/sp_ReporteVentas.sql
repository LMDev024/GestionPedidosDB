

CREATE PROCEDURE dbo.sp_ReporteVentas
	@FechaInicio DATETIME,
	@FechaFin DATETIME
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
		c.ClienteID,
		c.Nombre,
		p.PedidoID,
		p.FechaPedido,
		SUM(dp.Cantidad * dp.PrecioUnitario) AS TotalPedido
	FROM Clientes c
	JOIN Pedidos p ON c.ClienteID = p.ClienteID
	JOIN DetallePedidos dp ON p.PedidoID = dp.PedidoID
	WHERE p.FechaPedido BETWEEN @FechaInicio AND @FechaFin
	GROUP BY c.ClienteID, c.Nombre,p.PedidoID,p.FechaPedido
	ORDER BY c.Nombre,p.FechaPedido;
END
GO