-- examples on truncate / drop table

select *
from other_constraint;

insert into other_constraint values (default);

-- get rid of all rows (DML)
-- set autocommit off!
delete from other_constraint;

-- get rid of all rows (same as above, but could be faster)
truncate table other_constraint;

-- get rid of the table
drop table other_constraint;

-- do not fail if table is missing
drop table if exists other_constraint;

-- if autocommit off, then rollback!
