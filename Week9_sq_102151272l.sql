-- studetns leave the clubs

UPDATE MEMBERSHIP
SET LeaveDate = '12-JUL-1991'  
WHERE StudentID = 's12309813'
OR StudentID = 's12309812';

GO

-- students then rejoin
UPDATE MEMBERSHIP
SET JoinDate = '12-JAN-1992'
WHERE StudentID = 's12309813'
OR StudentID = 's12309812';
GO