
SET NOCOUNT ON;

SELECT
	c.ClienteId,
	c.Nombre AS Cliente,
	p.PedidoID,
	p.FechaPedido,
	dbo.fn_ContarPedidosCliente(c.ClienteID) AS TotalPedidos,
	SUM(dp.Cantidad * dp.PrecioUnitario) AS TotalGastado

FROM Clientes c
JOIN Pedidos p ON c.ClienteID = p.ClienteID
JOIN DetallePedidos dp ON p.PedidoID = dp.PedidoID
GROUP BY c.ClienteID, c.Nombre,p.PedidoID,p.FechaPedido
ORDER BY TotalGastado DESC;
GO