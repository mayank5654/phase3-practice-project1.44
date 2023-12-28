create database School_Management
use School_Management
CREATE TABLE Student(StudentId int primary key,
FirstName nvarchar(50),
LastName nvarchar(50),
ClassName int foreign key references Classes(ClassId) on delete cascade on update cascade,
SubjectName int foreign key references Subjects(SubjectId) on delete cascade on update cascade 
)

CREATE TABLE Subjects (
    SubjectId INT PRIMARY KEY,
    SubjectName NVARCHAR(50)
)

CREATE TABLE Classes (
    ClassId INT PRIMARY KEY,
    ClassName NVARCHAR(50)
)
select * from Students
select * from Subjects
select * from Classes

drop table Student
drop table Subjects
drop table Classes