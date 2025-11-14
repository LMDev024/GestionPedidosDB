
SET NOCOUNT ON;

BEGIN TRY
	BEGIN TRANSACTION;

	INSERT INTO Pedidos (ClienteID, FechaPedido)
	VALUES (1, GETDATE());

	DECLARE  @PedidoID INT = SCOPE_IDENTITY();

	INSERT INTO DetallePedidos (PedidoID,ProductoID,Cantidad,PrecioUnitario)
	VALUES
		(@PedidoID,1,2,150.00),
		(@PedidoID,2,1,200.00);
	COMMIT TRANSACTION;
	PRINT 'Transacción completada correctamente.';
END TRY 
BEGIN CATCH
	ROLLBACK TRANSACTION;
	PRINT 'Error en la transacción: ' + ERROR_MESSAGE();
END CATCH
GO