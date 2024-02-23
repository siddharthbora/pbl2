CREATE TABLE Customer (
    CustomerID BIGINT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Email VARCHAR(255),
    MobileNumber VARCHAR(15),
    UserID VARCHAR(20),
    Password VARCHAR(30),
    ConfirmPassword VARCHAR(30),
    Status VARCHAR(10) CHECK (Status IN ('Active', 'Inactive'))
);

