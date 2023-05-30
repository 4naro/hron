-- examples on order by
select first_name, last_name, salary 
from employee
order by last_name, first_name;

-- sorting in natural "ascending" order
select first_name, last_name, salary
from employee
order by salary;

-- descending, limited
select first_name, last_name, salary
from employee
order by salary desc
limit 3;

-- positional notation
select first_name, last_name, salary
from employee
where first_name like 'A%'
order by 3 desc
limit 5;

-- explicit column in order by, "asc" is rarely used
select first_name, last_name, hired
from employee
where first_name like 'A%'
order by hired asc
limit 5;

-- column alias in order by 
-- con l'operatore e lo spazio, invece che comparire 
-- tre colonne come nella riga 24, ne escono due di cui una 
-- si chiama name e in più tra i due dati ci sono due spazzi
select first_name || ' ' || last_name as name, hired
from employee
where first_name like 'A%'
order by name
limit 5;
