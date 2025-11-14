
CREATE TRIGGER trg_DeletePedido
ON Pedidos
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO AuditoriaPedidos (PedidoID, FechaInsercion, Usuario)
    SELECT d.PedidoID, GETDATE(), SYSTEM_USER
    FROM deleted d;
END
GO
