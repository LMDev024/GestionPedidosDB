-- Insertar un pedido y ver la auditoría
INSERT INTO Pedidos (ClienteID, FechaPedido)
VALUES (1, GETDATE());

SELECT * FROM AuditoriaPedidos;

-- Actualizar un detalle y revisar auditoría
UPDATE DetallePedidos
SET Cantidad = Cantidad + 1
WHERE PedidoID = 1;

SELECT * FROM AuditoriaPedidos;

-- Eliminar un pedido y revisar auditoría
DELETE FROM Pedidos
WHERE PedidoID = 1;

SELECT * FROM AuditoriaPedidos;
