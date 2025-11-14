
CREATE INDEX IX_Pedidos_ClienteID
ON Pedidos (ClienteID);
GO

CREATE INDEX IX_DetallePedidos_ProductoID
ON DetallePedidos(ProductoID);
GO

CREATE INDEX IX_Productos_Estado
ON Productos(Estado);
GO