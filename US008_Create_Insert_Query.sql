-- Create the table for storing bill details
CREATE TABLE BillDetails (
    BillID BIGINT PRIMARY KEY,
    CustomerID BIGINT,
    BillAmount DECIMAL(10, 2),
    City VARCHAR(255),
    CONSTRAINT fk_customer_id FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Insert 10 bill details for 3-4 customers together with manually specified BillID
INSERT INTO BillDetails (BillID, CustomerID, BillAmount, City) VALUES
(1, 1000000000016, 150.00, 'New York'),
(2, 1000000000016, 200.00, 'New York'),
(3, 1000000000016, 250.00, 'New York'),
(4, 1000000000017, 300.00, 'Los Angeles'),
(5, 1000000000017, 350.00, 'Los Angeles'),
(6, 1000000000018, 400.00, 'Chicago'),
(7, 1000000000018, 450.00, 'Chicago'),
(8, 1000000000019, 500.00, 'Houston'),
(9, 1000000000020, 550.00, 'Miami'),
(10, 1000000000020, 600.00, 'Miami');


SELECT City, AVG(BillAmount) AS AverageBill
FROM BillDetails
GROUP BY City
ORDER BY AverageBill DESC;
