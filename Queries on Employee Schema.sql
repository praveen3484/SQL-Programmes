
select * from Employees;

select * from EmployeeDetails;

select * from Domains;

select * from Branch;

select * from technology;

select * from Designation;

select * from Levels;

select * from Attendance;

select * from Bonus;

select * from EmployeeSkillSet;

select * from Skillsets;



select max(Salary) as Max_Salary,Technology.TechnologyName from EmployeeDetails
	inner join Technology on EmployeeDetails.FK_TechId = Technology.TechnologyId
	  group By TechnologyName;

select max(Salary) as Max_Salary,Technology.TechnologyName,Employees.EmployeeName
		from Employees 
		inner join EmployeeDetails on Employees.EmpId = EmployeeDetails.FK_EmpId 
		inner join Technology on EmployeeDetails.FK_TechId = Technology.TechnologyId
	  
	  group By Technology.TechnologyName,Employees.EmployeeName order by Salary Desc;

	  select Domains.DomainName,Employees.EmployeeName,Max(select count(FK_EmpId) from EmployeeDetails
	  
	  )








