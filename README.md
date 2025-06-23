# SQL-INTERNSHIP-TASK1
Library management system SQL schema

## 📚 Task 1: Database Setup and Schema Design – SQL Server (SSMS)

### 🎯 Objective

Design and implement a relational database schema for a Library Management System using Microsoft SQL Server Management Studio (SSMS).

---

### 🧰 Tools Used

* SQL Server 2019 / 2022
* SQL Server Management Studio (SSMS)
* ER Diagram Tool (optional): dbdiagram.io, draw\.io, Lucidchart

---

### 🗂️ Domain: Library Management System

This project simulates a library environment. It includes books, authors, members, and records of issued books.

---

### 🧱 Tables and Schema

#### 1. `Authors`

* `author_id` INT (Primary Key, IDENTITY)
* `name` NVARCHAR(100) NOT NULL

#### 2. `Books`

* `book_id` INT (Primary Key, IDENTITY)
* `title` NVARCHAR(100)
* `genre` NVARCHAR(50)
* `quantity` INT
* `author_id` INT (Foreign Key → `Authors.author_id`)

#### 3. `Members`

* `member_id` INT (Primary Key, IDENTITY)
* `name` NVARCHAR(100)
* `email` NVARCHAR(100)
* `phone` NVARCHAR(15)

#### 4. `IssuedBooks`

* `issue_id` INT (Primary Key, IDENTITY)
* `member_id` INT (Foreign Key → `Members.member_id`)
* `book_id` INT (Foreign Key → `Books.book_id`)
* `issue_date` DATE
* `return_date` DATE

---

### 🔗 Relationships

* Authors (1) → Books (M)
* Members (1) → IssuedBooks (M)
* Books (1) → IssuedBooks (M)

---

### 🧠 Key Concepts Practiced

* SQL Server database creation using `CREATE DATABASE`
* Table design using `CREATE TABLE`
* Applying `IDENTITY`, `PRIMARY KEY`, and `FOREIGN KEY`
* Enforcing referential integrity
* Designing normalized relational models

---

### 🚀 How to Run

1. Open SQL Server Management Studio (SSMS)
2. Connect to your local SQL Server instance
3. Execute the SQL script in sequence
4. Create diagrams using SSMS database diagrams or external tools

---

### 📁 Submission Package

```
📦 LibraryDB-SQLServer/
 ┣ 📜 schema.sql
 ┣ 📄 README.md / README.pdf
 ┣ 🖼️ er_diagram.png
```

---


### 👨‍💻 Author

**Hari Kishore Reddy Yeddula**
Intern, AI & DS – Dristi IIT Indore
[LinkedIn Profile](https://www.linkedin.com/in/hari-kishore-reddy-yeddula)

---

