QUESTION 1
  
-- Assuming the original table is named ProductDetail
WITH split_products AS (
  SELECT 
    OrderID,
    CustomerName,
    TRIM(UNNEST(STRING_TO_ARRAY(Products, ','))) AS Product
  FROM ProductDetail
)
SELECT * FROM split_products;

QESTION 2
  
-- Create the Orders table (Customer info)
CREATE TABLE Orders AS
SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;

-- Create the OrderItems table (Product info)
CREATE TABLE OrderItems AS
SELECT OrderID, Product, Quantity
FROM OrderDetails;


