
CREATE VIEW dbo.vw_PedidosCliente
AS
SELECT 
		c.ClienteID,
		c.Nombre,
		p.PedidoID,
		p.FechaPedido,
		SUM(dp.Cantidad * dp.PrecioUnitario) AS TotalPedido
FROM Clientes C
JOIN Pedidos p ON c.ClienteID = p.ClienteID
JOIN DetallePedidos dp ON p.PedidoID = dp.PedidoID
GROUP BY c.ClienteID, c.Nombre,p.PedidoID, p.FechaPedido;
GO