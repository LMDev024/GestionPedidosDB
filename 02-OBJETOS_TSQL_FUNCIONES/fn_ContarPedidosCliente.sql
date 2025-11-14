
CREATE FUNCTION dbo.fn_ContarPedidosCliente
(
	@ClienteID INT
)
RETURNS INT
AS
BEGIN
	DECLARE @TotalPedidos INT;
	
	SELECT @TotalPedidos = COUNT(*)
	FROM Pedidos
	WHERE ClienteID = @ClienteID;

	RETURN @TotalPedidos;
END
GO