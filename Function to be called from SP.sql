alter function dbo.fGetProductPriceColor(@strColor varchar(100))
Returns int
AS
BEGIN
	declare @Totalcost int
	select @TotalCost =Sum(ListPrice) from dbo.tblProduct where Color=@strColor
	
	return @TotalCost

end

select dbo.fGetProductPriceColor('Black');
