CREATE TABLE CLUB
(CName NVARCHAR(50), 
Descript NVARCHAR(50), 
PRIMARY KEY (CName)
);
CREATE TABLE STUDENT
(StudentID INT, 
FullName NVARCHAR(50), 
PRIMARY KEY (StudentID)
);
CREATE TABLE MEMBERSHIP
(CName NVARCHAR(50), 
StudentID INT, 
JoinDate DATETIME, 
PRIMARY KEY (CName, StudentID, )
);




CLUB (CName, Descript)
PK: CName

STUDENT (StudentID, FullName)
PK:ProjNum

MEMBERSHIP (CName, StudentID, JoinDate)
PK: CName, StudentID
FK: CName REFERENCI	NG Club
FK: StudentID REFERENCING Student

