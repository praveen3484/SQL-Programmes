-- ================================================
-- Template generated from Template Explorer using:
-- Create Scalar Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION dbo.fGetProductDetails
(
	-- Add the parameters for the function here
	@strColors  varchar(100)
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @TotalCost int
	
		-- Add the T-SQL statements to compute the return value here
	SELECT @TotalCost = sum(listPrice) from dbo.tblProduct  

	-- Return the result of the function
	RETURN @TotalCost

END
GO

select dbo.fGetProductDetails('green');
