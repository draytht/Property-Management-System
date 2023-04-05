use pms;

-- The first trigger, named "set_occupied", is designed to update the occupancy status of a property to "occupied" when a new lease is created for that property. 
-- This trigger fires after each insert on the "lease" table and updates the corresponding "property" table.
delimiter $$
create trigger set_occupied
after insert on lease
for each row
begin
  update property
  set occupancy_status = 'occupied'
  where property.property_id = new.property_id;
end;
$$


-- The second trigger, named "update_occupancy_status", is designed to ensure the occupancy status of each lease is accurate and up-to-date. 
-- This trigger fires after each insert on the "payment" table and checks whether the occupancy status of the associated lease is already set to "occupied".
--  If it isn't, the trigger updates the occupancy status to "occupied" for that lease. 
-- This helps ensure that the occupancy status of each lease is always up-to-date.
delimiter $$
create trigger update_occupancy_status
after insert on payment
for each row
begin
  update lease
  set occupancy_status = 'occupied'
  where lease.lease_id = new.lease_id
  and lease.occupancy_status <> 'occupied';
end;
$$
