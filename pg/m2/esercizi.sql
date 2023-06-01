-- Nome e cognome dei dipendenti del team Green in ordine di nome
select first_name, last_name, name
from employee e JOIN team_employee te
    on e.employee_id =  te.employee_id
    join team t on t.team_id = te.team_id
where name = 'Green'
order by first_name;

-- DIPENDENTI
--Rispetto al salario: maggiore, minore, somma, media
select MAX(salary) as max_salary, MIN(salary) as min_salary, SUM(salary) as total_salary, AVG(salary) as avg_salary
from employee;
    -- per ogni tipo di lavoro (job_id): maggiore, minore, somma, media
select job_id, MAX(salary) as max_salary, MIN(salary) as min_salary, SUM(salary) as total_salary, AVG(salary) as avg_salary
from employee
group by job_id;

-- Quanti dipendenti per ogni job_id
select job_id, COUNT(*) as num_employee
from employee
group by job_id;

    -- quanti sono i programmatori
    select COUNT(*) as num_programmer
    from employee
    where job_id = 'programmer';

-- Quanti sono i manager
select COUNT() as num_manager
from employee
where job_id = 'manager';

-- Nome dei dipendenti che non sono manager
select first_name, last_name
from employee
where job_id <> 'Manager';

-- Differenza tra il salario maggiore e il minore
select MAX(salary) - MIN(salary) as salary_difference
from employee;

    -- per ogni job_id, differenza tra il salario maggiore e il minore
    select job_id, MAX(salary) - MIN(salary) as salary_difference
    from employee
    group by job_id
    having salary_difference > 0;

-- Salario minimo con i dipendenti raggruppati per manager (con salario minimo > 6.000€)
select manager_id, MIN(salary) as min_salary
from employee
where manager_id is not null
group by manager_id
having min_salary >= 6000;





