drop database if exists test2;
create database if not exists test2;
use test2;
create table if not exists users
(
id int,
username varchar(30),
email varchar(40),
password_hash varchar(200),
age tinyint,
index (username, email)
);

insert into users value
(0, 'user1', 'user1@mail.ru', '123', 34),
(0, 'user2', 'user2@mail.ru', '123', 23);

insert into users(username, email) value
('user3', 'user3@mail.ru'),
('user4', 'user4@mail.ru'),
('user5', 'user5@mail.ru');

-- update users set id = 0;

update users set username = 'user 5' where username = 'user5';

-- delete from users;

delete from users where username = 'user4';

-- HOMEWORK

insert into users value
(4, 'user4', 'user4@mail.ru', '123', 28);

alter table users
add regdate date;

update users set regdate = '2009-09-09', id = 1 where username = 'user1';
update users set regdate = '2009-09-15', id = 2 where username = 'user2';
update users set regdate = '2009-09-17', id = 3 where username = 'user3';
update users set regdate = '2009-09-01', id = 4 where username = 'user4';
update users set regdate = '2009-09-25', id = 5, username = 'user5' where username = 'user 5';

-- select * from users;  

create table if not exists series (
id int,
series_name varchar(30),
release_date year,
country varchar(20),
rating float,
index (series_name) 
);

insert into series value
(1, 'Breaking Bad', '2008', 'USA', 8.9),
(2, 'The Office', '2005', 'USA', 8.6),
(3, 'Game of Thrones', '2011', 'USA', 9.0);
insert into series(id, series_name, rating) value
(4, 'Gravity Falls', 9.0),
(5, 'Friends', 9.2);

-- select * from series;

create table if not exists feedback (
id int,
outhers varchar(20),
comments text,
date_time datetime,
rating varchar(5),
index (rating));
insert into feedback value 
(1, 'Petya', 'Я такой сякой, а все другие.', '2022-12-01 10:37:22', '***'),
(2, 'Bot', 'Petya-bot,gg', '2023-10-25 22:15:56', '*****'),
(3, 'Sasha', 'Вот я и в базе данных', '2020-07-15 18:01:37', '****');
insert into feedback(outhers, comments) value
('Pupkin', 'Ни даты ,ни рейтинга ((('),
('Nagibator', 'ага, и IDшника тоже нетю :(');

-- select * from feedback;

create table if not exists genres (
id serial primary key,
movie varchar(50),
genre varchar(20),
rating varchar(5),
index (genre));
insert into genres value 
(1, 'The Green Mile', 'Drama', '*****'),
(2, 'The Shawshank Redemption', 'Drama', '*****'),
(3, 'Forrest Gump', 'Drama', '*****');
insert into genres(movie, genre) value
('Pulp Fiction', 'Crime'),
('Back of the Future', 'Fantastic');

-- select * from genres;

update users set username = 'Пользователь';

alter table users
add lastname varchar(20);

update users set lastname = 'Сенаторов' where regdate = '2009-09-09';

-- select * from users;

-- delete from genres where movie = 'Pulp Fiction';
delete from genres where id = 1;

select * from genres;
