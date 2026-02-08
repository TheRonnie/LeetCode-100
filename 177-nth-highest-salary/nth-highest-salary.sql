CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      select salary
      from (Select salary,Dense_rank() over( order by salary Desc ) as rk 
       from Employee) t
      where t.rk = N
      limit 1
  );
END