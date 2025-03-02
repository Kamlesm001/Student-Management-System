
# Student Management System

This project is a SQL-based Student Management System that helps manage students, courses, and enrollments efficiently. The system consists of three core tables: `STUDENT`, `COURSES`, and `ENROLLMENTS`, with constraints and relationships ensuring data integrity.

## 📌 Features
- **Student Table**: Stores student details with constraints on name length, unique email validation, and a primary key.
- **Courses Table**: Contains course details with constraints on course names.
- **Enrollments Table**: Establishes relationships between students and courses through foreign keys.

## 📂 Database Schema
### 📝 `STUDENT` Table
- `STUDENTID` (Primary Key) – Unique identifier for students.
- `SNAME` – Student's name with length constraints.
- `SEMAIL` – Unique email with validation checks.
- `BIRTHDATE` – Student's date of birth.

![STUDENTS TABLE ](https://github.com/user-attachments/assets/6dd41e6b-c2a2-4fa3-9962-dee3a309c59b)

### 📘 `COURSES` Table
- `COURSEID` (Primary Key) – Unique identifier for courses.
- `CNAME` – Course name with length constraints.
- `CREDITS` – Number of credits assigned to the course.
- `FESS` – Course fee as a decimal value.

![COURSES ](https://github.com/user-attachments/assets/8ef4e0bf-c18e-4d06-849d-fda9017cb1dc)

### 📑 `ENROLLMENTS` Table
- `ENROLLID` (Primary Key) – Unique identifier for enrollments.
- `STUDENTID` (Foreign Key) – Links to `STUDENTID` in `STUDENT` table.
- `COURSEID` (Foreign Key) – Links to `COURSEID` in `COURSES` table.
- `ENROLLDATE` – Date of enrollment.

![ENROLLMENT ](https://github.com/user-attachments/assets/18ef80ad-8c09-4668-a689-7fefb879837e)

## 🛠 How to Use
1. Import the provided SQL file: `Student_Management_System.sql` into your database.
2. Execute the queries to create the tables.
3. Insert or modify data as needed.

## 📷 Screenshots
| **Students Table** | **Courses Table** | **Enrollments Table** |
|--------------------|------------------|----------------------|
| ![STUDENTS TABLE ](https://github.com/user-attachments/assets/6dd41e6b-c2a2-4fa3-9962-dee3a309c59b) | ![COURSES ](https://github.com/user-attachments/assets/8ef4e0bf-c18e-4d06-849d-fda9017cb1dc) | ![ENROLLMENT ](https://github.com/user-attachments/assets/18ef80ad-8c09-4668-a689-7fefb879837e) |

## 📌 Requirements
- SQL Database (MySQL, Oracle, or PostgreSQL recommended)
- SQL Client (like MySQL Workbench, pgAdmin, or Oracle SQL Developer)

## 📜 License
This project is open-source and available under the MIT License.

---
