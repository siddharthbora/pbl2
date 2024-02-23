-- Create the table for storing bill details
CREATE TABLE MonthlyBill (
    BillID BIGINT PRIMARY KEY,
    CustomerID BIGINT,
    Amount DECIMAL(10, 2),
    Paid BOOLEAN
);


-- Insert data into MonthlyBill table
INSERT INTO MonthlyBill (BillID, CustomerID, Amount, Paid) VALUES
(1, 1000000000001, 123.00, TRUE),
(2, 1000000000002, 867.00, TRUE),
(3, 1000000000003, 123.00, FALSE),
(4, 1000000000004, 436.00, TRUE),
(5, 1000000000005, 734.00, FALSE),
(6, 1000000000016, 500.00, TRUE),
(7, 1000000000017, 789.00, TRUE),
(8, 1000000000018, 800.00, FALSE),
(9, 1000000000019, 412.00, TRUE),
(10, 1000000000020, 125.00, FALSE),
(11, 1000000000021, 743.00, TRUE),
(12, 1000000000022, 234.00, TRUE),
(13, 1000000000023, 633.00, FALSE),
(14, 1000000000024, 91.00, TRUE),
(15, 1000000000025, 103.00, TRUE);

-- SQL query to retrieve CustomerID and CustomerName from Customers table based upon the CustomerIDs of Bills table who failed to pay the bill
SELECT c.CustomerID, c.CustomerName
FROM Customer c
WHERE c.CustomerID IN (
    SELECT mb.CustomerID
    FROM MonthlyBill mb
    WHERE mb.Paid = FALSE
);


