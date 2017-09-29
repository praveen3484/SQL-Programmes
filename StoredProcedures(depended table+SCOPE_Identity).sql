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
Alter PROCEDURE sp_CreateUpdateStudents2
	-- Add the parameters for the stored procedure here
	@StuId int,
	@StuName nvarchar(255),
	@StuEmail varchar(50),
	@StuPhoneNo varchar(15),

	@StudentDetailsId int,
	@StuAddress nvarchar(100)
AS
BEGIN
	 SET NOCOUNT On --added to prevent extra result sets from
	-- interfering with SELECT statements.
	--Declare @StuId int

		begin tran		
			begin try

		--print @StuId
				if(@StuId<1)
				begin
					Insert into Students2(StuName,StuEmail,StuPhoneNo) values (@StuName,@StuEmail,@StuPhoneNo);                                                                     
					select @StuId =SCOPE_IDENTITY();
					Insert into StudentDetails1(StuId,StuAddress) values (@StuId,@StuAddress);
				end
					 
				if(@StuId > 0)		-- this is also valid -> @StuName is not null
				begin
					Update Students2 set StuName=@StuName,StuEmail=@StuEmail,StuPhoneNo=@StuPhoneNo 
						where StuId=@StuId;
					Update StudentDetails1 set StuId=@StuId,StuAddress=@StuAddress
						where StudentDetailsId=@StudentDetailsId; 
				end

			End try
			begin catch
					rollback
			end catch
			
		commit

    -- Insert statements for procedure here
	
END
GO
