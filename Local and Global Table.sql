--Local Table
	--Table will be in tempTable.
	--lifetime=till Sql Editor is open
create table #Example(
Id int 
)
select * from #Example;

--Global Table
	--Table will be in tempTable.
	--lifetime=till Sql Session is live.
	-- i.e. till the user logs out of the sql. 
	
create table ##Example(
Id int 
)
select * from #Example;

