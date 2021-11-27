DROP DATABASE IF EXISTS `Testing_System`;
CREATE DATABASE `Testing_System`;

USE Testing_System;

CREATE TABLE IF NOT EXISTS `Department` (
	DepartmentID INT,
    DepartmentName VARCHAR(50)
    );
    
CREATE TABLE IF NOT EXISTS `Position`(
	PositionID INT,
    PositionName VARCHAR(50)
    );
    
CREATE TABLE IF NOT EXISTS `Account` (
	AccountID INT,
    Email VARCHAR(50),
    Username VARCHAR(50),
    Fullname VARCHAR(50),
    DepartmentID INT,
    PositionID INT,
    CreateDate DATE
);

CREATE TABLE IF NOT EXISTS `Group`(
	GroupID INT,
    GroupName VARCHAR(50),
    CreatorID INT,
    CreateDate DATE
);

CREATE TABLE IF NOT EXISTS `GroupAccount`(
	GroupID INT,
    AccountID VARCHAR(50),
    JoinDate DATE
);

CREATE TABLE IF NOT EXISTS `TypeQuestion`(
	TypeID INT,
    TypeName VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS `CategoryQuestion`(
 	CategoryID INT,
    CategoryName VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS `Question`(
	QuestionID INT,
    Content VARCHAR(50),
    CategoryID INT,
    TypeID INT,
    CreatorID INT,
    CreateDate DATE
);

CREATE TABLE IF NOT EXISTS `Answer`(
	AnswerID INT,
    Content VARCHAR(50),
    QuestionID INT,
    isCorrect ENUM ("True","False")
);

CREATE TABLE IF NOT EXISTS `Exam`(
	ExamID INT,
    `Code` INT,
    Title VARCHAR(50),
    CategogyID INT,
    Duration TIME,
    CreatorID INT,
    CreateDate DATE
);

CREATE TABLE IF NOT EXISTS `ExamQuestion`(
ExamID INT,
QuestionID INT
);
