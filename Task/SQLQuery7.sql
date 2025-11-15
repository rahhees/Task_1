create database task;

use task ;

create table Books(
BookID int IDentity(1,1) primary key,
Title Varchar(40) not null,
Author varchar(50) not null,
publicationYear Int
);


insert into Books(Title,Author,publicationYear)

values
('To Kill a Mockingbird', 'Harper Lee', 1960),
('1984', 'George Orwell', 1949),
('Animal Farm', 'George Orwell', 1945),
('The Alchemist', 'Paulo Coelho', 1988),
('The Great Gatsby', 'F. Scott Fitzgerald', 1925);

select *from Books where publicationYear=1960;
select  *from  Books where Author='George Orwell';
select distinct Author from Books;

truncate table books;