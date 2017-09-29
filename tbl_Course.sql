create table tbl_Course(
CourseId int Not null,
Course_Name char(100) not null,
FacultyId int 
primary key (CourseId)
)

drop table tbl_Course;


insert into tbl_Course (CourseId,Course_Name,FacultyId) values(5,'MBBS',05);
 
