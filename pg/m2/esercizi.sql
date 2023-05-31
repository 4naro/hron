select first_name, last_name, name
from employee e JOIN team_employee te
    on e.employee_id =  te.employee_id
    join team t on t.team_id = te.team_id
where name = 'Green'
order by first_name;
