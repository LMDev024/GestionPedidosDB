
CREATE FUNCTION dbo.fn_CalcularSubtotal(
	@Cantidad INT,
	@PrecioUnitario DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
AS
BEGIN
	RETURN(@Cantidad * @PrecioUnitario);
END
GO


