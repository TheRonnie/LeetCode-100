# Write your MySQL query statement below
select  d.name as Department,
        e.name as Employee,
        e.salary as Salary
From (
    Select *,dense_rank() over(partition by departmentId order by salary desc) AS dk
    from Employee 
) e
join Department d on e.departmentId = d.id
where e.dk <=3





-- select d.name Department, e.name Employee, e.Salary as "Salary",
-- from ( select *,dense_rank() over(partition by DepartmentId, order by Salary DESC) as dk
-- from Employee  ) e
-- join Department d on e.departmentId = d.id
-- where e.dk <= 3;
