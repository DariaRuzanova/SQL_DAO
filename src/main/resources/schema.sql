create schema if not exists netology;
create table if not exists netology.customers
(
    id           serial primary key,
    name         varchar(50) not null,
    surname      varchar(50) not null,
    age          int check ( age > 0 and age < 110 ),
    phone_number varchar(15)
);

create table if not exists netology.orders
(
    id           serial primary key,
    date         date,
    customer_id  int,
    product_name varchar(255)            not null,
    amount       int check (amount > 0 ) not null,
    foreign key (customer_id) references netology.customers (id)
);

INSERT INTO netology.CUSTOMERS(name, surname, age, phone_number)
VALUES ('Olga', 'Sidorova', 38, '89603443434'),
       ('Ivan', 'Ivanov', 17, '89601111111'),
       ('Alexey', 'Petrov', 48, '89112222222'),
       ('Anna', 'Perova', 15, '89455645656'),
       ('Pavel', 'Smirnov', 38, '8964554748'),
       ('Alexey', 'Kovrov', 78, '89672362527');

insert into netology.orders(date, customer_id, product_name, amount)
VALUES ('23-05-20', 3, 'apple', 100),
       ('23-05-19', 1, 'bread', 50),
       ('23-05-19', 5, 'milk', 90),
       ('23-05-18', 4, 'strawberries', 500),
       ('23-05-20', 6, 'cheese', 450),
       ('23-05-20', 5, 'ice cream', 100);