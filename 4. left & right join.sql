--Inner join in sql 
create database sqljoins;
use sqljoins;
create table loan(
loan_no varchar(5),
branch varchar(50),
amount int(10)
);
insert into loan values ("L1", "B1" , 10000);
insert into loan values ("L2", "B2" , 20000);
insert into loan values ("L3", "B3" , 30000);
insert into loan values ("L4", "B4" , 40000);

select * from loan;

create table borrower(
customer_name varchar(50),
loan_no varchar(5)
);

insert into borrower values ("Shaaz" , "L1");
insert into borrower values ("Shams" , "L2");
insert into borrower values ("yaser" , "L3");
insert into borrower values ("mustafa" , "L5");
select * from borrower;

select loan.loan_no , loan.branch , loan.amount , borrower.loan_no
from loan inner join borrower
on loan.loan_no = borrower.loan_no;

					--LEFT JOINS---
select loan.loan_no , loan.branch , loan.amount , borrower.loan_no
from loan left join borrower
on loan.loan_no = borrower.loan_no;

					--RIGHT JOIN--
select loan.loan_no , loan.branch , loan.amount , borrower.loan_no
from loan right join borrower
on loan.loan_no = borrower.loan_no;

drop table loan;
drop table borrower;

