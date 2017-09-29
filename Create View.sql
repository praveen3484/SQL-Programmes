select * from tblProduct;

select * from tblProductCategory;

select * from tblProductSubcategory;

create view vGetProductColor
as
 select top 10 Color from dbo.tblProduct ;

 create view vGetData
as
 select top 10 dbo.tblProduct.EnglishProductName,dbo.tblProduct.StandardCost,dbo.tblProduct.Color, dbo.tblProductCategory.EnglishProductCategoryName ,
  dbo.tblProductSubcategory.EnglishProductSubcategoryName
		from dbo.tblProduct 
			join dbo.tblProductSubCategory on dbo.tblProduct.ProductSubcategoryKey=dbo.tblProductSubCategory.ProductCategoryKey
			join dbo.tblProductCategory on dbo.tblProductSubcategory.ProductCategoryKey=dbo.tblProductCategory.ProductCategoryKey;


 select * from vGetProductColor;

 select * from vGetData;

  select * from vGetDataOfRedColor;

 create view vGetDataOfRedColor
as
 select * from dbo.tblProduct where dbo.tblProduct.Color='Red' ;

  create view vGetDataMaxStandardCost
as
 select max(StandardCost) as MaxStandardCost from dbo.tblProduct where dbo.tblProduct.Color='Red' ;

 select * from vGetDataMaxStandardCost;

