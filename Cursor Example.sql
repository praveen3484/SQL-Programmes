
DECLARE your_cursor cursor for
	select Color,Size from dbo.tblProduct
Open your_cursor 
	fetch next from your_cursor;
close your_cursor
deallocate your_cursor

declare @Size as nvarchar(30)
declare @Color as nvarchar(30)
declare your_cursor cursor for
	select Size,Color from dbo.tblProduct
open your_cursor
	fetch next from your_cursor into @Size,@Color
		while @@FETCH_STATUS=0
		Begin 
			print 'Size='+@Size + ', Color' + @Color
			fetch next from your_cursor into @Size, @Color
		End
	close your_cursor
Deallocate your_cursor


