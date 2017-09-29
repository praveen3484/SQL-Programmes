create table tblTranInfo(
	ProductId int,
	Deleted bit Default 0,
	Inserted bit Default 0,
	Updated bit Default 0,
	actionDate dateTime,
)


--insert
create trigger trgAfterInsert on dbo.tblProduct
for insert
as
	declare @productId int;
	select @productId = i.ProductKey from inserted i;
	insert into tblTranInfo
					(ProductId,Inserted,actionDate)
		values(@productId,1,getdate());
		print '	AFTER INSERT TRIGGER FIRED.'
GO

select * from tblTranInfo;

select count(*) from tblProduct;--399

insert into tblProduct(EnglishProductName,Color) values('triggerTest','Red')

--Update
create trigger trgAfterUodate on dbo.tblProduct
for Update
as
	declare @productId int;
	select @productId = i.ProductKey from inserted i;
	insert into tblTranInfo
					(ProductId,Updated,actionDate)
		values(@productId,1,getdate());
		print '	AFTER UPDATE TRIGGER FIRED.'
GO

select count(*) from tblProduct
select * from tblProduct
update tblProduct set EnglishProductName='CHECKING' where 
 
