Create database SMS_DB
use SMS_DB

create table person9(
p_id int NOT NULL PRIMARY KEY identity(1,1) ,
f_name varchar (50) not null,
l_name varchar(50)not null,
gender varchar(10)not null,
age int not null,
nationality varchar(50)not null,
phone int not null,
address varchar (150) not null,
email varchar(50) not null
)
select * from person9;



create table studentss(
s_id int NOT NULL PRIMARY KEY identity(1,1),

fees_id int not null,
FOREIGN KEY (fees_id) REFERENCES fees(fees_id),
p_id int not null,
FOREIGN KEY (p_id) REFERENCES person9(p_id) ,
class_id int not null,
FOREIGN KEY (class_id) REFERENCES class(class_id),
)
select * from studentss;





create table management(
manage_id int NOT NULL PRIMARY KEY identity(1,1),
position varchar(50) not null,
username varchar(50) not null,
password varchar(50) not null,
salary int not null,
p_id int not null,
FOREIGN KEY (p_id) REFERENCES person9(p_id)
)

select * from management; 



create table faculty(
faculty_id int NOT NULL PRIMARY KEY identity(1,1),
salary int not null,
p_id int not null,
faculty_name varchar(50) not null,
FOREIGN KEY (p_id) REFERENCES person9(p_id)
)

select * from faculty;








create table class(
class_id int NOT NULL PRIMARY KEY identity(1,1),
class_name varchar(20) not null,
class_section varchar(10) not null,
faculty_id int not null ,
FOREIGN KEY (faculty_id) REFERENCES faculty(faculty_id) 
)
select * from class;









create table subject(
sub_id int NOT NULL PRIMARY KEY identity(1,1),
sub_name varchar(20) not null,
faculty_id int not null,
FOREIGN KEY (faculty_id) REFERENCES faculty(faculty_id) 
) 
select * from subject;







create table tests(
test_id int NOT NULL PRIMARY KEY identity(1,1),
sub_id int not null,
FOREIGN KEY (sub_id) REFERENCES subject(sub_id),
test_marks int not null,
mid_marks int not null,
final_marks int not null,
s_id int not null,
FOREIGN KEY (s_id) REFERENCES studentss(s_id),
)
SELECT * FROM tests;















create table grades (
grape_id int NOT NULL PRIMARY KEY identity(1,1),
percent_ int not null,
grade varchar(10) not null,
s_id int not null,
FOREIGN KEY (s_id) REFERENCES studentss(s_id),
test_id int not null,
FOREIGN KEY (test_id) REFERENCES tests(test_id),
)
select * from grades;





create table fees(
fees_id int NOT NULL PRIMARY KEY identity(1,1),
issue_date date not null,
due_date date not null,
amount int not null
)
select * from fees;



create table expenses(
expense_id int NOT NULL PRIMARY KEY identity(1,1),
expense_description varchar(100) not null,
bills int not null
)
select * from expenses;

create table rooms(
room_id int NOT NULL PRIMARY KEY identity(1,1),
room_no int not null,
paper_name_id int not null,
FOREIGN KEY(paper_name_id) REFERENCES exams(paper_id)
)
select * from rooms;







create table exams(
paper_id int NOT NULL PRIMARY KEY identity(1,1),
paper_sub_id int not null,
FOREIGN KEY(paper_sub_id) REFERENCES subject(sub_id),
paper_date date not null,
duration time not null
)
select * from exams;



create table schedule(
room_id int,
paper_id int,
sub_id int,
 PRIMARY KEY (room_id , paper_id , sub_id ) ,
date1 date not null,
time1 time not null
)
select * from schedule;



create table teache(
s_id int,
 faculty_id int,
 PRIMARY KEY (s_id , faculty_id )
)

select * from teache;


create table marks(

s_id int,
 test_id int,
 PRIMARY KEY (s_id , test_id )
)
select * from marks;




select name,amount,month from student where fees_status='paid' 


use SMS_DB

create table st(
id int not Null primary key,
st_name varchar(50),

)



name,status,month,amount


SELECT student.f_name, fee.status, fees.amount, fees.issue_date
FROM   student  join fees on s_id= f_id  join data on f_id=data_id where fee.status='paid'