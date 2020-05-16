IF OBJECT_ID('MEMBERSHIP') IS NOT NULL
DROP TABLE MEMBERSHIP;
IF OBJECT_ID('CLUB') IS NOT NULL
DROP TABLE CLUB;
IF OBJECT_ID('STUDENT') IS NOT NULL
DROP TABLE STUDENT;


GO

CREATE TABLE CLUB
(CName NVARCHAR(50), 
Descript NVARCHAR(50), 
PRIMARY KEY (CName)
);

CREATE TABLE STUDENT
(StudentID NVARCHAR(50), 
FullName NVARCHAR(50), 
PRIMARY KEY (StudentID)
);

CREATE TABLE MEMBERSHIP
(CName NVARCHAR(50), 
StudentID NVARCHAR(50), 
JoinDate DATETIME, 
LeaveDate DATETIME, 
PRIMARY KEY (CName, StudentID, JoinDate),
FOREIGN KEY (Cname) REFERENCES CLUB,
FOREIGN KEY (StudentID) REFERENCES STUDENT,
);

GO

INSERT INTO CLUB (Cname, Descript) VALUES
('Beak Wetting Club of Australia', 'Financial investing'),
('Basketball Victoria', 'Controlling Basketball for all'),
('Ruby Programmers Club', 'Making programming fun for humans');

INSERT INTO STUDENT (StudentID, FullName) VALUES
('s12309813', 'Tony Beroni'),
('s12309812', 'Russel Coight'),
('s12309818', 'Action Jackson');

