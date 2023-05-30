-- in ordine per cognome e nome
select first_name, last_name, phone, hired
from employee
order by last_name, first_name;

-- chi ha nome David o Peter
select first_name, last_name, phone, hired
from employee
where first_name like 'David' or first_name like 'Peter';

-- del dipartimento 6 
select first_name, last_name, phone, hired
from  employee
where department_id != 6;

-- del dipartimento 3 e 5 
select first_name, last_name, phone, hired, department_id
from employee
where department_id in (3, 5);

-- con salario maggiore di 10000
select first_name, last_name, phone, hired, salary
from employee
where salary > 10000;

-- con salario minore di 4000 o maggiore di 15000
select first_name, last_name, phone, hired, salary
from employee
where (salary < 4000 or salary > 15000);

-- con salario minore di 4000 o maggiore di 15000, ma solo per i dipartimenti 5 e 8
select first_name, last_name, phone, hired, salary, department_id
from employee
where (salary < 4000 or salary > 15000) AND department_id in (5, 8);

