CREATE TABLE if not exists  CUSTOMERS(
                          id serial PRIMARY KEY,
                          name VARCHAR(255),
                          surname VARCHAR(255),
                          age INT,
                          phone_number VARCHAR(20)
);

CREATE TABLE if not exists ORDERS (
                        id serial PRIMARY KEY,
                        date DATE,
                        customer_id INT,
                        product_name VARCHAR(255),
                        amount INT,
                        FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(id)
);

-- INSERT INTO CUSTOMERS (name, surname, age, phone_number)
-- VALUES ('Vera', 'Knyazeva', '30', '89999999999'),
--        ('Ivan', 'Ivanov', '38', '89999999900'),
--        ('Akim', 'Petrov', '25', '89999229999'),
--        ('Anna', 'Mastikova', '34', '89999999399');
--
-- INSERT INTO ORDERS (date, product_name, amount)
-- VALUES ('2024-10-01', 'Agg','30'),
--        ('2024-10-02','Bread','18'),
--        ('2024-10-03','Apple','22'),
--        ('2024-10-04','Cucumber','14');

