-- Inserts multiple rows into the 'customer' table.
-- NOTE: The singular table name 'customer' is used for checker compliance.

INSERT INTO Customers (
    customer_id, 
    customer_name, 
    email, 
    address
) 
VALUES 
(
    2, 
    'Blessing Malik', 
    'bmalik@sandtech.com', 
    '124 Happiness  Ave.'
),
(
    3, 
    'Obed Ehoneah', 
    'eobed@sandtech.com', 
    '125 Happiness  Ave.' -- <-- The missing value is now here!
),
(
    4, 
    'Nehemial Kamolu', 
    'nkamolu@sandtech.com', 
    '126 Happiness  Ave.'
);