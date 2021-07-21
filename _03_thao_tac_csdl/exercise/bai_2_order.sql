use quan_ly_ban_hang;

insert into customer (name_c,age_c)
value ('minh quan' , 10), ('Ngoc Oanh', 20), ('Hong Ha',50);

insert into `order` (id_c, date_o)
values (1, '2006-3-21'), (2,'2006-3-23'), (1,'2006-3-16');

insert into product (name_p, price_p)
value ('may giat',3),
	('tu lanh',5),
    ('dieu hoa',7),
    ('quat', 1),
    ('bep dien',2);
    
insert into order_detail
value (1,1,3),(1,3,7),(1,4,2),(2,1,1),(3,1,8),(2,5,4),(2,3,3);


select o.id_o,o.date_o, o.total_price_o
from `order` o
left join order_detail od on o.id_o = od.id_o
inner join product p on od.id_p = p.id_p;

select c.id_c, c.name_c, p.name_p
from customer c
inner join `order` o on c.id_c = o.id_c
inner join order_detail od on o.id_o = od.id_o
inner join product p on od.id_p = p.id_p;
-- where c.id_c = 1

select *
from customer c
where not exists
(select * from `order` o where o.id_c = c.id_c);

select *
from customer c
left join `order` o on c.id_c = o.id_c
where o.id_o is null;

select o.id_o,o.date_o, od.od_qty*p.price_p as total_price
from `order` o
inner join order_detail od on o.id_o = od.id_o
inner join product p on od.id_p = p.id_p;

select o.id_o,o.date_o, sum(od.od_qty*p.price_p) as total_price
from `order` o
inner join order_detail od on o.id_o = od.id_o
inner join product p on od.id_p = p.id_p
group by o.id_o;

