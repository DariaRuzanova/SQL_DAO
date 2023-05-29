INSERT INTO CUSTOMERS(name, surname, age, phone_number)
VALUES ('Olga', 'Sidorova', 38, '89603443434'),
       ('Ivan', 'Ivanov', 17, '89601111111'),
       ('Alexey', 'Petrov', 48, '89112222222'),
       ('Anna', 'Perova', 15, '89455645656'),
       ('Pavel', 'Smirnov', 38, '8964554748'),
       ('Alexey', 'Kovrov', 78, '89672362527');

insert into orders(date, customer_id, product_name, amount)
VALUES ('23-05-20', 3, 'apple', 100),
       ('23-05-19', 1, 'bread', 50),
       ('23-05-19', 5, 'milk', 90),
       ('23-05-18', 4, 'strawberries', 500),
       ('23-05-20', 6, 'cheese', 450),
       ('23-05-20', 5, 'ice cream', 100);