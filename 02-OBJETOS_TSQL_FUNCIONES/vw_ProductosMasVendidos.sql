

CREATE VIEW dbo.vw_ProductosMasVendidos
AS
SELECT
	pr.ProductoID,
	pr.Nombre,
	SUM(dp.Cantidad) AS TotalVendido
FROM Productos pr
JOIN DetallePedidos dp ON pr.ProductoID = dp.productoID
GROUP BY pr.ProductoID, pr.Nombre
GO