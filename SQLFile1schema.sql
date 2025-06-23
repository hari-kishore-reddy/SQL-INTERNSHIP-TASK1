--create database
Create Database Librarydb;
go 
use Librarydb;
go

--Treate Tuthor Table
create table Authors (
    author_id int identity(1,1) primary key,
    name nvarchar(100) not null 
);
go

--Create Books Table 
CREATE TABLE Books (
    book_id int identity(1,1) primary key,
    title nvarchar(100),
    genre nvarchar(50),
    quantity int,
    author_id int,
    foreign key (author_id) references authors(author_id)
);
go

--Create Members Table
CREATE TABLE Members (
    member_id int identity(1,1) primary key,
    name nvarchar(100),
    email nvarchar(100),
    phone nvarchar(15),
);
go

--Create IssuedBooks Table 
CREATE TABLE IssuedBooks (
    issue_id int identity(1,1) primary key,
    member_id int,
    book_id int,
    issue_date date,
    return_date date,
    foreign key (member_id) references members(member_id),
    foreign key (book_id) references books(book_id)
    );
go

