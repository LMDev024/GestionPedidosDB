
CREATE TRIGGER trg_UpdateDetallePedidos
ON DetallePedidos
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Solo registrar si se cambia la cantidad o el precio
    IF UPDATE(Cantidad) OR UPDATE(PrecioUnitario)
    BEGIN
        INSERT INTO AuditoriaPedidos (PedidoID, FechaInsercion, Usuario)
        SELECT DISTINCT d.PedidoID, GETDATE(), SYSTEM_USER
        FROM inserted d;
    END
END
GO
