use shop;

select 
t1.CNAME,
t2.ORDER_ID,
t2.AMT
from customers t1
inner join orders t2
on t1.CUST_ID = t2.CUST_ID;

select 
t1.CNAME,
t2.AMT
from customers t1
inner join orders t2
on t1.CUST_ID = t2.CUST_ID
where t2.AMT > 1000;

select 
t1.CNAME,
t3.SNAME,
from customers t1
inner join orders t2
on t1.CUST_ID = t2.CUST_ID
inner join sellers t3
on t2.SELL_ID = t3.SELL_ID
where t1.CITY != t3.CITY;




