create database Joins;

use joins;

create table Authors(
	AuthorId int primary key identity(1,1),
	AuthorName Nvarchar(40)
);

create table Publishers(
	PublisherId int primary key identity(1,1),
	PublisherName nvarchar(50)
);

create table Books(
	BookId int primary key identity(1,1),
	Title varchar(40) NOT NULL,
	AuthorID int not null,
	PublisherId int not null,
	foreign key(AuthorId) references authors(authorId)
	on delete cascade
	on update cascade,

	foreign key(publisherid)references Publishers(publisherId)
	on delete cascade
	on update cascade

);

insert into Authors(AuthorName)
values('J.K.Rowling'), ('George Orwell'), ('Chetan Bhagat');

insert into Publishers(PublisherName)
values('Bloomsbury'), ('Penguin'), ('HarperCollins'),
	('Bloomsbury'), ('Penguin'), ('HarperCollins');

insert into Books(Title,AuthorID,PublisherId)
values
('Harry Potter', 1, 1),
('1984', 2, 2),
('Animal Farm', 2, 2),
('2 States', 3, 3);

select Books.Title,Authors.AuthorName,Publishers.PublisherName from Books inner join Authors on Books.AuthorID = Authors.AuthorId
inner join Publishers on Books.PublisherId = Publishers.PublisherId;

SELECT  Books.Title, Authors.AuthorName, Publishers.PublisherName FROM Books
LEFT JOIN Authors ON Books.AuthorID = Authors.AuthorID
LEFT JOIN Publishers ON Books.PublisherID = Publishers.PublisherID;

SELECT Books.Title,Authors.AuthorName FROM Books
RIGHT JOIN Authors ON Books.AuthorID = Authors.AuthorID;

SELECT Books.Title,Authors.AuthorName
FROM Books
FULL OUTER JOIN Authors ON Books.AuthorID = Authors.AuthorID;

delete from Authors where AuthorId=2;

update Publishers set PublisherId=10 where PublisherId=2;

SELECT AuthorName AS Name FROM Authors
UNION
SELECT PublisherName AS Name FROM Publishers;

SELECT AuthorName AS Name FROM Authors
UNION ALL
SELECT PublisherName AS Name FROM Publishers;

