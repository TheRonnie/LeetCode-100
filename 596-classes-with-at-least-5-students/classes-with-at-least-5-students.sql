# Write your MySQL query statement below
Select class
From Courses
group by class
having count(class)>=5; 