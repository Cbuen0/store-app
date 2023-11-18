-- Insert dummy data into Addresses table
INSERT INTO Addresses (Street, City, Country, PostalCode)
VALUES ('123 Main St', 'City1', 'Country1', '12345'),
       ('456 Elm St', 'City2', 'Country2', '67890');

-- Insert dummy data into Cart table
INSERT INTO Cart (Total)
VALUES (100.50),
       (75.25);

-- Insert dummy data into Category table
INSERT INTO Category (Name)
VALUES ('Category A'),
       ('Category B');

-- Insert dummy data into Payment table
INSERT INTO Payment (CardLastName, CardFirstName, CardNumber, CVV, ExpirationDate)
VALUES ('Doe', 'John', '1234567890123456', 123, '2024-12-31'),
       ('Smith', 'Jane', '9876543210987654', 456, '2025-06-30');

-- Insert dummy data into Sale table
INSERT INTO Sale (StartDate, EndDate, PercentOff)
VALUES ('2023-01-01 00:00:00', '2023-02-28 23:59:59', 10.00),
       ('2023-03-01 00:00:00', '2023-03-31 23:59:59', 15.00);

-- Insert dummy data into Product table
INSERT INTO Product (ProductName, Price, ImageURL, SaleID, Sku, Rating, Descript, ManufacturerInformation, ProdHeight, ProdWidth, ProdLength, ProdWeight)
VALUES ('Lenovo IdeaPad 3 Laptop', 450.43, CAST('https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6461/6461977ld.jpg' AS varbinary(max)), 1, 'SKU123', 4.5, 'New, Touchscreen, Comes with Charger and Pen, 16GB RAM', 'Lenovo Group of China', 15.0, 3.0, 6.0, 2.0),
       ('iPhone 14', 145.29, CAST('https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP873/iphone-14_1.png' AS varbinary(max)), 2, 'SKU456', 4.2, 'New iPhone 14 Unlocked, Comes with Charger and Screen Protector, Comes with 5 Year Warranty', 'Apple', 4.5, 2.5, 5.5, 1.8),
       ('PlayStation 5', 69.00, CAST('https://m.media-amazon.com/images/I/41sN+-1hRsL._AC_UF894,1000_QL80_.jpg' AS varbinary(max)), 1, 'SKU567', 5, 'Comes with Controller and Charging Cable, 2TB of Storage', 'Sony Interactive Entertainment LLC', 4.0, 3.5, 7.0, 6.0);

-- Insert dummy data into ProductToCart table
INSERT INTO ProductToCart (CartID, ProductID)
VALUES (1, 1),
       (1, 2),
       (2, 2);

-- Insert dummy data into ProductToCategory table
INSERT INTO ProductToCategory (CategoryID, ProductID)
VALUES (1, 1),
       (2, 2);

-- Insert dummy data into Person table
INSERT INTO Person (LastName, FirstName, Email, Password, AddressID, PaymentID, CartID)
VALUES ('Doe', 'John', 'john.doe@example.com', 'password123', 1, 1, 1),
       ('Smith', 'Jane', 'jane.smith@example.com', 'pass456', 2, 2, 2);