-- Inserts a single row into the Customers table with specific values.
-- The database name is assumed to be passed as an argument to the MySQL command.

INSERT INTO Customers (
    customer_id, 
    customer_name, 
    email, 
    address
) 
VALUES (
    1, 
    'Cole Baidoo', 
    'cbaidoo@sandtech.com', 
    '123 Happiness Ave.'
);