/* DDL (Data Definition Language) statements are used to define and manage database structures such as tables, indexes and schemas.
It is used for creating, altering and deleting database schema objects */

-- DDL statements are
/* 1.create
   2.alter
   3.drop
   4.truncate
   5.rename */
   
   -- CREATE:
   
   create database mobile; -- Creating a new database
   
   -- Creating a new table within a database
   create table mobile_details(
   mobile_id int auto_increment primary key,
   brand_name varchar(50) not null,
   model_name varchar(50) not null,
   price decimal(10,2) not null,
   ram_capacity int,
   storage_capacity int,
   created_at timestamp default current_timestamp
   );
   
   -- Creating an index on a table column to improve query performance
   create index idx_brand on mobile_details(brand_name);
   
   -- ALTER:
   
   -- Modifying the structure of an existing table
   
   -- Adding a new column
   alter table mobile_details add column operating_system varchar(50);
   
   -- Modifying the datatype of an existing column
   alter table mobile_details modify column operating_system varchar(45);
   alter table mobile_details modify column ram_capacity varchar(10);
   alter table mobile_details modify column storage_capacity varchar(10);
   
   alter table mobile_details auto_increment=1;
   
   -- Renaming the existing column name
   alter table mobile_details change column operating_system os_name varchar(45);
   
   -- Dropping a column
   alter table mobile_details drop column os_name;
   
   -- DROP:
   
   -- Deleting an existing database along with all its tables and data
   -- drop database mobile;
   
   -- Deleting an existing table and its data
   -- drop table mobile_details;
   
   -- Deleting an existing index on a table
   -- drop index idx_brand on  mobile_details;
   
   -- TRUNCATE: Removes all rows from a table, resetting any auto_increment values but keeps the table structure for future use
   
   -- truncate table mobile_details;
   
   -- RENAME:
   
   -- changing the name of an existing table
   -- rename table mobile_details to mobile_info;
   
   insert into mobile_details (brand_name,model_name,price,ram_capacity,storage_capacity,created_at)
   values('Realme','10',16999.99,'8gb','128gb',default);
   insert into mobile_details(brand_name,model_name,price,ram_capacity,storage_capacity,created_at) 
   values('Oppo','f15',11999.99,'4gb','128gb',default);
   
   describe mobile_details;
      
   select*from mobile_details;
   
-- Key Points:-

/*
CREATE statements are used to create databases, tables, and other database objects.
ALTER statements allow modification of existing database objects.
DROP statements remove database objects permanently.
TRUNCATE statements delete all data from a table but keep the structure intact.
RENAME statements change the name of database objects.
*/