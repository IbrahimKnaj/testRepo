
Create TRIGGER trg_AfterInsertStudent on Students
After Insert

as
Begin
  insert into StudentInsertLog (StudentID,Name,Subject,Grade,TeacherID)
  Select StudentID,Name,Subject,Grade,TeacherID From inserted; 
end


----------------------------------------------------------
-- Execute:

insert into Students (StudentID,Name,Subject,Grade,TeacherID)
Values (13,'Haneen','Sceince',90,2);


Select * From StudentInsertLog;



