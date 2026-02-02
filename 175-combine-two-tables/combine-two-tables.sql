# Write your MySQL query statement below
select p.firstName firstName, p.lastName lastName, a.city city, a.state state
from person p
left join address a on p.personID = a.personID