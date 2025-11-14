
SET NOCOUNT ON;

BEGIN TRY
	BEGIN TRANSACTION;

	INSERT INTO Pedidos(ClienteID,FechaPedido)
	VALUES (1,GETDATE());

	DECLARE @PedidoID INT = SCOPE_IDENTITY();

	INSERT INTO DetallePedidos(PedidoID,ProductoID,Cantidad,PrecioUnitario)
	VALUES (@PedidoID,9999,1,100.00);

	COMMIT TRANSACTION;
	PRINT 'Transaccion Completada Correctamente.';
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION;
	PRINT 'Transacción revertida por error: '+ERROR_MESSAGE();
END CATCH
GO