create table Users (
user_id integer primary key auto_increment,
user_name varchar(50) not null ,
email varchar(100) unique,
age integer check(age between 0 and 140),
gender varchar(2) check(gender like 'm' or gender like 'f') 
);

insert into Users (user_name, email, age, gender)
values ('John Doe', 'johndoe@example.com', 30, 'm'),
('Jane Smith', 'janesmith@example.com', 25, 'f');
select * from Users;