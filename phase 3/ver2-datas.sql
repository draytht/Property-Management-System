use pms;

 -- Adding data into property tabel -- 
INSERT INTO property (property_name, property_address, property_type)
VALUES 
  ('Property 1', '123 Main St', 'Single Family Home'),
  ('Property 2', '456 Elm St', 'Apartment'),
  ('Property 3', '789 Oak St', 'Condo'),
  ('Property 4', '1011 Maple St', 'Duplex'),
  ('Property 5', '1213 Cedar St', 'Townhouse'),
  ('Property 6', '1415 Pine St', 'Single Family Home'),
  ('Property 7', '1617 Walnut St', 'Apartment'),
  ('Property 8', '1819 Birch St', 'Condo'),
  ('Property 9', '2021 Spruce St', 'Duplex'),
  ('Property 10', '2223 Ash St', 'Townhouse');
  -- property data ends-- 
  
  -- data entry for property_manager starts --
INSERT INTO property_manager (f_name, l_name, email, phone_number, property_id)
VALUES
('John', 'Doe', 'johndoe@gmail.com', '555-1234', 1),
('Jane', 'Smith', 'janesmith@gmail.com', '555-5678', 2),
('Tom', 'Wilson', 'tomwilson@gmail.com', '555-9012', 3),
('Sara', 'Brown', 'sarabrown@gmail.com', '555-3456', 4),
('Mike', 'Taylor', 'miketaylor@gmail.com', '555-7890', 5),
('Anna', 'Lee', 'annalee@gmail.com', '555-2345', 6),
('Eric', 'Williams', 'ericwilliams@gmail.com', '555-6789', 7),
('Lisa', 'Davis', 'lisadavis@gmail.com', '555-0123', 8),
('David', 'Anderson', 'davidanderson@gmail.com', '555-4567', 9),
('Rachel', 'Jones', 'racheljones@gmail.com', '555-8901', 10);
-- data entry for property_manager ends --

  -- data for the tenant starts -- 
INSERT INTO tenant (tenant_id, f_name, l_name, email, phone_number)
VALUES
(1,'John', 'Doe', 'johndoe@gmail.com', '555-1234'),
(2, 'Jane', 'Doe', 'janedoe@gmail.com', '555-5678'),
(3, 'Bob', 'Smith', 'bobsmith@gmail.com', '555-9012'),
(4,'Alice', 'Johnson', 'alicejohnson@gmail.com', '555-3456'),
(5,'Tom', 'Brown', 'tombrown@gmail.com', '555-7890'),
(6,'Sara', 'Lee', 'saralee@gmail.com', '555-2345'),
(7,'Mike', 'Williams', 'mikewilliams@gmail.com', '555-6789'),
(8,'Karen', 'Taylor', 'karentaylor@gmail.com', '555-0123'),
(9,'David', 'Davis', 'daviddavis@gmail.com', '555-4567'),
(10, 'Lisa', 'Wilson', 'lisawilson@gmail.com', '555-8901');
-- data for the tenanat ends --

-- Inserting data into unit table starts --
INSERT INTO unit (property_id, tenant_id, rent_amount)
VALUES
(1, 1, 1000.00),
(2, 2, 750.00),
(3, 3, 850.00),
(4, 4, 950.00),
(5, 5, 800.00),
(6, 6, 1200.00),
(7, 7, 950.00),
(8, 8, 1100.00),
(9, 9, 900.00),
(10, 10, 1000.00);
-- Inserting data into unit table ends --

-- data entry for the technician starts --
INSERT INTO technician (f_name, l_name, email, phone_number)
VALUES
('Adam', 'Smith', 'adamsmith@gmail.com', '555-1234'),
('Emily', 'Johnson', 'emilyjohnson@gmail.com', '555-5678'),
('Chris', 'Brown', 'chrisbrown@gmail.com', '555-9012'),
('Michelle', 'Lee', 'michellelee@gmail.com', '555-3456'),
('Alex', 'Williams', 'alexwilliams@gmail.com', '555-7890'),
('Maria', 'Taylor', 'mariataylor@gmail.com', '555-2345'),
('Jacob', 'Davis', 'jacobdavis@gmail.com', '555-6789'),
('Natalie', 'Wilson', 'nataliewilson@gmail.com', '555-0123'),
('Daniel', 'Anderson', 'danielanderson@gmail.com', '555-4567'),
('Grace', 'Jones', 'gracejones@gmail.com', '555-8901');
-- data entry for the technician ends --

-- data entry into lease table starts --
INSERT INTO lease (property_id, tenant_id, unit_id, lease_start_date, lease_end_date)
VALUES
(1, 1, 1, '2022-01-01', '2023-01-01'),
(2, 2, 2, '2022-02-01', '2023-02-01'),
(3, 3, 3, '2022-03-01', '2023-03-01'),
(4, 4, 4, '2022-04-01', '2023-04-01'),
(5, 5, 5, '2022-05-01', '2023-05-01'),
(6, 6, 6, '2022-06-01', '2023-06-01'),
(7, 7, 7, '2022-07-01', '2023-07-01'),
(8, 8, 8, '2022-08-01', '2023-08-01'),
(9, 9, 9, '2022-09-01', '2023-09-01'),
(10, 10, 10, '2022-10-01', '2023-10-01');
-- data entry into lease table ends --

 -- inserting data into payment table starts --
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
/*payment table insertion ends here*/

-- inserting data into maintenance_request table --
INSERT INTO maintenance_request (property_id, tenant_id, technician_id, unit_id, description, status)
VALUES
(1, 2, 3, 1, 'Leaky faucet in the bathroom', 'open'),
(2, 4, 5, 2, 'Clogged drain in the kitchen', 'in progress'),
(3, 6, 7, 3, 'Broken window in the living room', 'completed'),
(4, 8, 9, 4, 'Heating not working in one room', 'open'),
(5, 10, 1, 5, 'Painting needed in the bedroom', 'in progress'),
(6, 2, 3, 6, 'Electrical problem in the kitchen', 'completed'),
(7, 4, 5, 7, 'AC not working in the living room', 'open'),
(8, 6, 7, 8, 'Leak in the roof in the bathroom', 'in progress'),
(9, 8, 9, 9, 'Carpet cleaning needed in the bedroom', 'completed'),
(10, 10, 1, 10, 'Pest control needed in the kitchen', 'open');
-- maintenance request data ends --


 
  /*adding data ends*/