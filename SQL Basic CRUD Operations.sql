create database user; -- Creating a database

use user; -- Using a database

-- drop database user; - dropping a database

-- Creating a table
create table user_details(
user_id int auto_increment primary key,
user_name varchar(15) not null,
mob_no varchar(10) not null,
email_id varchar(30),
address varchar(100)
);

show tables; -- Showing the tables

describe user_details; -- Describing a table

-- drop table user_details; - Dropping a table

-- CRUD Operations

-- Inserting data into a table
insert into user_details values(1,'Rakshith','9110886582','rakshithkp2709@gmail.com','5th block Rajajinagar, Bangalore');
insert into user_details(user_id,user_name,mob_no,email_id,address) values(2,'Prajwal','7019477411','praj2000@gmail.com','BTM layout, Bangalore');
insert into user_details values(3,'Mahantesh','8462836867','mantu14@gmail.com','Bagalkot');
insert into user_details values(4,'Prabhakar','9445464523','prabhu20@gmail.com','Gulbarga');
insert into user_details values(5,'Ganavi','8345648053','ganu18@gmail.com','Mandya');
insert into user_details values(6,'Triveni','9277538220','trivp27@gmail.com','Hassan');

-- Selecting data from a table
select*from user_details; -- getting all the data from the table

select address from user_details where user_id=2; -- getting data from single column

select mob_no, email_id from user_details where user_name='Rakshith'; -- getting data from multiple columns

-- Updating data from a table
update user_details set mob_no='9445464521' where user_name='Prabhakar'; -- updating single column

update user_details set email_id='kmantu14@gmail.com' where address='Bagalkot'; 

update user_details set email_id='praz2000@gmail.com', address='Netaji Nagar, Haveri' where user_id=2; -- updating multiple columns

-- Deleting data from a table
delete from user_details where user_id=4;




