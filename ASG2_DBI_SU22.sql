CREATE TABLE Student(
StudentId INT PRIMARY KEY NOT NULL,
StudentName VARCHAR(50) NOT NULL,
Gender bit NOT NULL,
DateOfBirth DATE NOT NULL
)
CREATE TABLE [Subject](
SubjectId INT PRIMARY KEY NOT NULL,
SubjectName VARCHAR(50) NOT NULL
)
CREATE TABLE [Group](
GroupId INT PRIMARY KEY NOT NULL,
GroupName VARCHAR(20) NOT NULL,
StudentId INT,
FOREIGN KEY (StudentId) REFERENCES Student(StudentId),
)
CREATE TABLE Semster(
SemesterId INT PRIMARY KEY NOT NULL,
SemesterName varchar(20) NOT NULL,
StartDate DATE NOT NULL,
EndDate DATE NOT NULL
)

CREATE TABLE Assessment(
   AssessmentId	INT	PRIMARY KEY NOT NULL,
   AssessmentName VARCHAR(50),
   SubjectId INT NOT NULL,
   SemesterId INT NOT NULL,
   Category	VARCHAR(50) NOT NULL,
   [Type] VARCHAR(10)  NOT NULL,
   Part	INT	NOT NULL,
   [Weight]	FLOAT NOT NULL,
   [Completion Criteria] VARCHAR(10) NOT NULL,
   Duration	VARCHAR(15)  NOT NULL,
   LO INT,
   [Question Type]	TEXT NOT NULL,
   [No Question] INT,
   [Knowledge and Skill] VARCHAR(150) NOT NULL,
   [Grading Guide]	TEXT NOT NULL,
   Note	VARCHAR(2000),
   FOREIGN KEY (SubjectId) REFERENCES Subject (SubjectId),
   FOREIGN KEY (SemesterId) REFERENCES Semster (SemesterId),
);

CREATE TABLE Student_Assessment(
StudentId INT NOT NULL,
AssessmentId INT NOT NULL,
GroupId INT NOT NULL,
[Date] DATE NOT NULL,
Score FLOAT NOT NULL,
Comment TEXT ,
FOREIGN KEY (StudentId) REFERENCES Student (StudentId),
FOREIGN KEY (AssessmentId) REFERENCES Assessment(AssessmentId),
FOREIGN KEY (GroupId) REFERENCES [Group] (GroupId)
);
