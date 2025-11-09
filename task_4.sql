-- Query the Information Schema to get the full description of the 'books' table.
-- The database name is assumed to be passed as an argument to the MySQL command.
SELECT 
    COLUMN_NAME, 
    COLUMN_TYPE, 
    IS_NULLABLE, 
    COLUMN_KEY, 
    COLUMN_DEFAULT, 
    EXTRA 
FROM 
    INFORMATION_SCHEMA.COLUMNS 
WHERE 
    TABLE_SCHEMA = 'alx_book_store'
AND 
    TABLE_NAME = 'Books';