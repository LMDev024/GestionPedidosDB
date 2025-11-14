
CREATE TRIGGER trg_InsertPedido
ON Pedidos
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO AuditoriaPedidos (PedidoID, FechaInsercion, Usuario)
    SELECT 
        i.PedidoID,
        GETDATE(),
        SYSTEM_USER  
    FROM inserted i;
END
GO
