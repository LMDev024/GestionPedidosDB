
CREATE TRIGGER trg_AfterInsertPedidos
ON Pedidos
AFTER INSERT 
AS 
BEGIN
	SET NOCOUNT ON;

	INSERT INTO AuditoriaPedidos (PedidoId,FechaInsercion,Usuario)
	SELECT i.PedidoID, GETDATE(), SYSTEM_USER
	FROM inserted i;
END
GO

--  Crear tabla AuditoriaPedidos
CREATE TABLE AuditoriaPedidos (
    AuditoriaID INT IDENTITY(1,1) PRIMARY KEY, 
    PedidoID INT NOT NULL,                    
    FechaInsercion DATETIME NOT NULL DEFAULT GETDATE(),
    Usuario NVARCHAR(100) NOT NULL
);
GO

-- Agregar la FK hacia la tabla Pedidos
ALTER TABLE AuditoriaPedidos
ADD CONSTRAINT FK_AuditoriaPedidos_Pedidos
FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID);
GO
