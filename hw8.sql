CREATE DATABASE Store;
USE Store;
CREATE TABLE Student(
id int NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(20),
    lastname varchar(20),
    company varchar(20),
    PRIMARY KEY(id)
);
CREATE TABLE Student_address(
  id int auto_increment unique primary key,
  street varchar(10) not null,
  num int not null,
  town varchar(20) not null,
  zip int not null,
  studentId int not null,
  foreign key (studentId) references student(id)
);
CREATE TABLE Class(
id int auto_increment unique primary key
class_subject varchar(10) not null
);

select * from student;
insert into student_address (street, num, town, zip, studentId) VALUES ('Tupelo Rd','65', 'Bristol', '02809');
insert into student_address (street, num, town, zip, studentId) VALUES ('Tupelo Rd','66', 'Bristol', '02809');
insert into student_address (street, num, town, zip, studentId) VALUES ('Tupelo Rd','67', 'Bristol', '02809');
insert into student_address (street, num, town, zip, studentId) VALUES ('Tupelo Rd','68', 'Bristol', '02809');
insert into student_address (street, num, town, zip, studentId) VALUES ('Tupelo Rd','69', 'Bristol', '02809');

