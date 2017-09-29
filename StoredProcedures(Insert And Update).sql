-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
alter PROCEDURE sp_CreateUpdateUser2 
		-- Add the parameters for the stored procedure here
		@UserId int, 
		@Email varchar(50), 
		@Address nvarchar(200), 
		@PhoneNo bigint, 
		@Password varchar(50) 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	if @UserId <1
		
		Insert into User2(Email,Address,PhoneNo,Password) values(@Email,@Address,@PhoneNo,@Password);
	
	if @UserId >0
		Update User2 set Email=@Email,Address=@Address,PhoneNo=@PhoneNo,Password=@Password
		where UserId=@UserId;	

    -- Insert statements for procedure here
	
END
GO
