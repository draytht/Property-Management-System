/*data entry for tables*/
 INSERT INTO tenant ( f_name, l_name, email, phone_number)
VALUES 
( 'John', 'Doe', 'johndoe@example.com', '555-1234'),
( 'Jane', 'Doe', 'janedoe@example.com', '555-5678'),
( 'Bob', 'Smith', 'bobsmith@example.com', '555-9876'),
( 'Alice', 'Jones', 'alicejones@example.com', '555-5432'),
( 'Tom', 'Wilson', 'tomwilson@example.com', '555-1111'),
( 'Sarah', 'Lee', 'sarahlee@example.com', '555-2222'),
( 'David', 'Brown', 'davidbrown@example.com', '555-3333'),
( 'Emily', 'Taylor', 'emilytaylor@example.com', '555-4444'),
( 'Michael', 'Davis', 'michaeldavis@example.com', '555-5555'),
( 'Olivia', 'Moore', 'oliviamoore@example.com', '555-6666'),
('ahmed', 'Yu', 'hana@yahoo.com','652048530');
-- Insert 10 rows of data into technician table
INSERT INTO technician (f_name, l_name, email, phone_number)
VALUES 
('John', 'Smith', 'johnsmith@example.com', '555-1234'),
('Emily', 'Jones', 'emilyjones@example.com', '555-2345'),
('Michael', 'Brown', 'michaelbrown@example.com', '555-3456'),
('Sarah', 'Davis', 'sarahdavis@example.com', '555-4567'),
('David', 'Garcia', 'davidgarcia@example.com', '555-5678'),
('Jessica', 'Martinez', 'jessicamartinez@example.com', '555-6789'),
('Steven', 'Hernandez', 'stevenhernandez@example.com', '555-7890'),
('Laura', 'Lee', 'lauralee@example.com', '555-8901'),
('Kevin', 'Kim', 'kevinkim@example.com', '555-9012'),
('Linda', 'Wang', 'lindawang@example.com', '555-0123');


-- Insert 10 rows of data into property table
INSERT INTO property (property_name, property_address, property_type)
VALUES 
('Lake View Apartments', '123 Main St, Anytown, USA', 'Apartment'),
('Greenwood Villas', '456 Elm St, Anytown, USA', 'Condo'),
('Riverside Estates', '789 Oak St, Anytown, USA', 'Townhouse'),
('Forest Heights', '101 Maple St, Anytown, USA', 'Single Family Home'),
('Meadow View', '202 Pine St, Anytown, USA', 'Duplex'),
('Garden Grove', '303 Cedar St, Anytown, USA', 'Apartment'),
('Mountain View', '404 Spruce St, Anytown, USA', 'Condo'),
('Park Place', '505 Birch St, Anytown, USA', 'Townhouse'),
('Harbor Lights', '606 Aspen St, Anytown, USA', 'Single Family Home'),
('Skyline Terrace', '707 Walnut St, Anytown, USA', 'Duplex');
/*unit table*/
INSERT INTO unit (property_id, tenant_id, rent_amount)
VALUES (1, 1, 1500.00),
       (3, 2, 1400.00),
       (3, 3, 1800.00),
       (4, 4, 1700.00),
       (5, 5, 1200.00),
       (6, 6, 1300.00),
       (7, 7, 2000.00),
       (8, 8, 1900.00),
       (9, 9, 1000.00),
       (10, 10, 1100.00),
       (1, 11,2000.00);

/*maintenance request*/

INSERT INTO maintenance_request(property_id, tenant_id, technician_id, unit_id, description, status)
VALUES (1, 1, 1, 1, 'Leaky faucet in the kitchen', 'open'),
(1, 2, 2, 2, 'Broken window in the living room', 'open'),
(1, 3, 3, 3, 'Clogged sink in the bathroom', 'open'),
(2, 4, 4, 4, 'Light fixture needs to be replaced', 'open'),
(2, 5, 5, 5, 'AC unit not working', 'open'),
(3, 7, 7, 7, 'Garbage disposal needs to be fixed', 'open'),
(4, 8, 8, 8, 'Toilet is constantly running', 'open');
/*lease table */
INSERT INTO lease (property_id, tenant_id, unit_id, lease_start_date, lease_end_date)
VALUES
    (1, 1, 1, '2022-01-01', '2023-01-01'),
    (2, 2, 2, '2022-01-01', '2023-01-01'),
    (3, 3, 3, '2022-02-01', '2023-02-01'),
    (4, 4, 4, '2022-02-01', '2023-02-01'),
    (5, 5, 5, '2022-03-01', '2023-03-01'),
    (6, 6, 6, '2022-03-01', '2023-03-01'),
    (7, 7, 7, '2022-04-01', '2023-04-01'),
    (8, 8, 8, '2022-04-01', '2023-04-01'),
    (9, 9, 9, '2022-05-01', '2023-05-01'),
    
    
    (10, 10, 10, '2022-05-01', '2023-05-01'),
     (1, 11, 11, '2022-01-01', '2023-01-01');
  
    

/*property manageger table */
INSERT INTO property_manager (f_name, l_name, email, property_id, phone_number)
VALUES
('Emily', 'Johnson', 'emily.johnson@example.com', 1, '555-1234'),
('Hannah', 'Smith', 'hannah.smith@example.com', 2, '555-5678'),
('Avery', 'Davis', 'avery.davis@example.com', 3, '555-9012'),
('Madison', 'Brown', 'madison.brown@example.com', 4, '555-3456'),
('Lauren', 'Wilson', 'lauren.wilson@example.com', 5, '555-7890'),
('Olivia', 'Taylor', 'olivia.taylor@example.com', 1, '555-2345'),
('Emma', 'Clark', 'emma.clark@example.com', 2, '555-6789'),
('Chloe', 'Allen', 'chloe.allen@example.com', 3, '555-0123'),
('Sophia', 'Walker', 'sophia.walker@example.com', 4, '555-4567'),
('Ava', 'Jones', 'ava.jones@example.com', 5, '555-8901');
  /*payment table */
 INSERT INTO payment (lease_id, payment_date, paid_amount)
VALUES
(1, '2022-01-01', 1000.00),
(2, '2022-02-01', 1000.00),
(3, '2022-03-01', 1000.00),
(4, '2022-01-01', 1200.00),
(5, '2022-02-01', 1200.00),
(6, '2022-03-01', 1200.00),
(7, '2022-01-01', 800.00),
(8, '2022-02-01', 800.00),
(9, '2022-03-01', 800.00),
(10, '2022-01-01', 900.00);
select * from lease;
use pms;
  