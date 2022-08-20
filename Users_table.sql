create schema users_table;

create table persons
(
    name varchar(150) not null,
    surname varchar(150) not null,
    age int check ( age > 0 ),
    phone_number varchar(150) default '0',
    city_of_living varchar(250) default '-',
    PRIMARY KEY (name, surname, age)
);

insert into persons (name, surname, age, city_of_living) values ('Tom', 'Cruise', 60, 'Minsk');
insert into persons (name, surname, age, city_of_living) values ('Stanislav', 'Ivanov', 12, 'Moscow');
insert into persons (name, surname, age, city_of_living) values ('Alexey', 'Smolov', 31, 'Moscow');
insert into persons (name, surname, age, phone_number, city_of_living) values ('Elena', 'Kravt', 22, '89238472344', 'Minsk');

select name, surname
from persons
where city_of_living = 'Moscow' or 'MOSCOW';

select * from persons
where age > 27;