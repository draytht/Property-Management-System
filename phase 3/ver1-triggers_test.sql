use pms;

-- This trigger would automatically update the occupancy status of a property to "occupied" 
-- whenever a new lease is created for that property.
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


-- This trigger checks whether the occupancy status of the lease associated with the payment is already set to "occupied". 
-- If it isn't, the trigger updates the occupancy status to "occupied" for that lease. 
-- This helps ensure that the occupancy status of each lease is accurate and up-to-date.
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
