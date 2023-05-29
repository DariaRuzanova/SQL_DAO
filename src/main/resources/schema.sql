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