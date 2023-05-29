select product_name from netology.orders
         inner join netology.customers
                    on orders.customer_id = customers.id
where lower(customers.name) = lower(:name);