.headers on
.mode column

values(1);
values(1,'A');
values(1,'A') union values(2,'B');

select column1 as id, column2 as name 
  from (values(1,'A') union values(2,'B'));

select typeof((values(1)));
select typeof((values(1.2)));
select typeof((values('A')));
select typeof((values(x'FF')));

select * from (values(1));

