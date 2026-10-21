-- Active: 1756562213121@@127.0.0.1@5432@my_testdb
SELECT * from users;

# how to create a table
CREATE TABLE imit (
    roll NUMBER,
    name VARCHAR(30),
    mark NUMBER
);

# insert into the table
INSERT INTO imit VALUES(112,'rahul',65);
#inserting using less number of columns 
INSERT INTO imit(roll,name) VALUES(113,'cinna');

#delete from using where 
DELETE FROM imit WHERE name = 'Himanshuuuu' AND roll = '102';

#SELECT data
SELECT * FROM imit;

#select the specific data
SELECT roll, mark FROM imit;
SELECT * FROM imit WHERE mark>=90;
SELECT NAME FROM imit WHERE mark>=90;
SELECT name,mark FROM imit WHERE mark<=90 AND MARK >=70;

# how to count the number of rows
#N.B. Count() is a function to count the number of rows.
SELECT count(*) FROM imit;
SELECT count(DISTINCT name),count(DISTINCT mark) FROM imit;

# how to select distinct TO VIEW THE RECORDS IN A QUERY AVOIDING THE DUPLICATE RECORDS
SELECT DISTINCT * FROM imit;
SELECT DISTINCT name FROM imit;

#Order by 
select roll, mark from imit order by mark;
select roll, mark from imit order by mark DESC;

# add a column to the table
ALTER TABLE imit ADD COLUMN COURSE VARCHAR(50);
UPDATE imit SET COURSE = 'MBA' WHERE roll >= 116;

# group by clause 
SELECT course, COUNT(*) AS No_of_Students 
FROM imit 
GROUP BY course 
ORDER BY No_of_Students;

#“HAVING CLAUSE”- It operates in same fashion as that of where clause, except that the “having” clause operates on group functions(“GROUP FUNCTION” is a function which operates on multiple rows) where as “where” clause operates on individual rows
select course, count(*) No_of_Students from imit group by course having count(*) > 15;

# how drop the database
DROP TABLE users;