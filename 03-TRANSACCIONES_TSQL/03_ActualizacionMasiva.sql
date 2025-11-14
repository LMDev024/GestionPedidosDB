
SET NOCOUNT ON;

BEGIN TRY
	BEGIN TRANSACTION;

	INSERT INTO Pedidos(ClienteID, FechaPedido)
	VALUES(1,GETDATE());

	DECLARE @PedidoID INT = SCOPE_IDENTITY();

	INSERT INTO DetallePedidos (PedidoID, ProductoID, Cantidad,PrecioUnitario)
	VALUES
		(@PedidoID,3,2,150.00),
		(@PedidoID,2,1,200.00);
	UPDATE Productos
	SET Stock = Stock -dp.Cantidad
	FROM Productos p 
	JOIN DetallePedidos dp ON p.ProductoID = dp.ProductoID
	WHERE dp.PedidoID = @PedidoID;

	COMMIT TRANSACTION;
	PRINT 'Pedido Insertado y stock actualizado';
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION;
	PRINT 'Error en la transaccion: '+ERROR_MESSAGE();
END CATCH
GO

-- DEBEN HABER REGISTROS DE CLIENTES Y PRODUCTOS ANTES DE EJECUTAR, ADEMAS PASAR LOS IDS CORRESPONDIENTES DE DICHOS PORDUCTOS