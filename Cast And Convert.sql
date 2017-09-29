--cast
select cast(14.1111 as decimal(4,2));--4 for two digit no,thats why we have 4 in (4,2) for the scale 14
select cast(getdate() as date);

--Convert
select convert(varchar(20),getdate(),113);

select convert(varchar(8),Year(getdate()),113);
select convert(varchar(8),Month(getdate()),113);
select convert(varchar(8),Day(getdate()),113);




