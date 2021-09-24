drop database if exists quan_ly_sinh_vien;
create database quan_ly_sinh_vien;
use quan_ly_sinh_vien;

CREATE TABLE Class(
    Class_ID   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Class_Name VARCHAR(60) NOT NULL,
    Start_Date DATETIME    NOT NULL,
    `Status`   BIT);
    
CREATE TABLE Student(
    Student_Id   INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Student_Name VARCHAR(30) NOT NULL,
    Address     VARCHAR(50),
    Phone       VARCHAR(20),
    `Status`     BIT,
    Class_Id     INT NOT NULL,
    FOREIGN KEY (Class_Id) REFERENCES Class (Class_ID));
    
 CREATE TABLE `Subject`(
    Sub_Id   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Sub_Name VARCHAR(30) NOT NULL,
    Credit  TINYINT     NOT NULL DEFAULT 1 CHECK ( Credit >= 1 ),
    `Status`  BIT         DEFAULT 1);
 
 CREATE TABLE Mark(
    Mark_Id    INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Sub_Id     INT NOT NULL,
    Student_Id INT NOT NULL,
    Mark      FLOAT   DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
    Exam_Times TINYINT DEFAULT 1,
    UNIQUE (Sub_Id, Student_Id),
    FOREIGN KEY (Sub_Id) REFERENCES `Subject` (Sub_Id),
    FOREIGN KEY (Student_Id) REFERENCES Student (Student_Id)
);