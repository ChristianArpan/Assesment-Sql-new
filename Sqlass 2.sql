create table School (
std_Id int primary key,
stdName varchar(50),
Sex Varchar(50),
Percentage int,
class int ,
sec varchar(50),
Stream varchar(50),
DOB date 
);

# 1 To display all the records form STUDENT table. SELECT * FROM student ;

SELECT * FROM school;

# 2. To display any name and date of birth from the table STUDENT. SELECT StdName, DOB FROM student ; 

SELECT stdname, DOB from school ;

# 3. To display all students record where percentage is greater of equal to 80 FROM student table.
SELECT * FROM school WHERE percentage >= 80; 

#4. To display student name, stream and percentage where percentage of student is more than 80
SELECT StdName, Stream, Percentage WHERE percentage > 80; 

# 5. To display all records of science students whose percentage is more than 75 form student table.
SELECT * From school WHERE stream = ‘Science’ AND percentage > 75; 