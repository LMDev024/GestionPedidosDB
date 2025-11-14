
CREATE PROCEDURE dbo.sp_InsertarPedido
	@ClienteID INT,
	@FechaPedido DATETIME
AS
BEGIN
	SET NOCOUNT ON;

	BEGIN TRY
		BEGIN TRANSACTION;

		INSERT INTO Pedidos(ClienteID,FechaPedido)
		VALUES (@ClienteID,@FechaPedido);

		DECLARE @PedidoID INT = SCOPE_IDENTITY();

		-- Mas adelante esto podria ampliarse para agregar los detalles del pedido desde aqui
		
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION;
		THROW;
	END CATCH
END
GO