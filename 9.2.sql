drop database if exists test3;

create database test3;
use test3;
create table if not exists magazins (
id int,
title varchar(20),
adress varchar(100),
city tinytext,
`working hours` varchar(30),
index (id, title));

insert into magazins value 
(0, 'Пятёрочка', 'ул. Семёнова, 47', 'Москва', '8:00-22:00'),
(1, 'Перекрёсток', 'ул. Семёнова, 48', 'Москва', 'круглосуточно'),
(2, 'Пятёрочка', 'ул. Вовы, 32', 'Санкт-Петербург', '8:30-22:30'),
(3, 'Перекрёсток', 'ул. Татьяны Б., 1', 'Ижевск', '9:00-21:00');

update magazins set title = 'Пятёрочка 2' where title = 'Пятёрочка';
update magazins set adress = 'пр-т Орлова, 33' where city = 'Ижевск';
update magazins set 
title = 'Всегда открыто', 
adress = 'Рядом с домом' 
where `working hours` = 'круглосуточно';

delete  from magazins where id = 2;

select * from magazins;