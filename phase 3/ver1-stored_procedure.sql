use pms;

drop procedure if exists GetTotalRentPaidByTenantInPeriod;

-- when you call the stored procedure and pass in a tenantId, startDate, and endDate, 
-- it will return a result that includes the tenant's first and last name along with the total rent paid within the specified date range.

delimiter $$
create procedure GetTotalRentPaidByTenantInPeriod(in tenantId int, in startDate date, in endDate date)
begin
declare fName varchar(255);
declare lName varchar(255);

select f_name, l_name into fName, lName from tenant where tenant_id = tenantId;
select concat(fName, ' ', lName) as Tenant, sum(paid_amount) as TotalPaid
from payment
inner join lease on payment.lease_id = lease.lease_id
inner join tenant on lease.tenant_id = tenant.tenant_id
where tenant.tenant_id = tenantId and payment_date >= startDate and payment_date <= endDate;

end; $$

call GetTotalRentPaidByTenantInPeriod(1, '2022-01-01', '2022-12-31');
call GetTotalRentPaidByTenantInPeriod(10, '2022-01-01', '2022-12-31');


/*this stored procedure creates a table out of 
open maintenance request and first and last name of the tenant and their unit id
*/
DELIMITER //
DROP PROCEDURE IF EXISTS create_open_maintenance_requests_table;
  CREATE PROCEDURE create_open_maintenance_requests_table()
BEGIN
    -- Drop the table if it already exists
    DROP TABLE IF EXISTS open_maintenance_requests;

    -- Create the table with the columns we want to include
    CREATE TABLE open_maintenance_requests (
          f_name varchar(30), l_name varchar(30),
    room_number INT,
        description TEXT,
        status ENUM('open', 'in progress', 'completed')
    );

    -- Insert data into the table from the maintenance_request table
    INSERT INTO open_maintenance_requests (
        f_name, l_name,
      room_number,
        description,
        status
    )
     select t.f_name, t.l_name,
        unit_id,
        description,
        status
    from maintenance_request as m join tenant as t on t.tenant_id = m.tenant_id
    where status = 'open';
end //

DELIMITER ;
CALL   create_open_maintenance_requests_table();
 SELECT * FROM open_maintenance_requests;
 select * from maintenance_request;