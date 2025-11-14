
CREATE PROCEDURE dbo.sp_ActualizarStock
	@ProductoID INT,
	@CantidadVendida INT
AS
BEGIN 
	SET NOCOUNT ON;

	UPDATE Productos
	SET Stock = Stock - @CantidadVendida
	WHERE ProductoID = @ProductoID;
END
GO