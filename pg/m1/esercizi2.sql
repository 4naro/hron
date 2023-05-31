-- Employee
--Chi è stato assunto nel 2015
select first_name, last_name, hired
from employee
where hired >= '2015-01-01' AND hired <= '2015-12-31';
-- where hired BETWEEN '2015-01-01' AND '2015-12-31';

-- Quali job_id sono presenti, in ordine naturale
select distinct job_id 
from employee
ORDER BY job_id;

-- Chi ha una commissione
select first_name, last_name, commission
from employee
where commission IS NOT NULL
ORDER BY commission;

-- Chi ha una ‘a’ nel nome o cognome
select first_name, last_name
from employee
where 

--Department
--Nomi, in ordine naturale
select first_name, last_name
from employee
ORDER BY first_name;

--Location
--Indirizzi delle sedi italiane
select first_name, last_name, country
from employee
where 