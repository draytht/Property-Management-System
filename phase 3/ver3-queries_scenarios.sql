use pms;
/*TENANT QUERY STARTS */
-- 1. tenatns can see payment's history
/* This query will display a list of tenant IDs, first names, last names, payment 
IDs, lease IDs, payment dates, and paid amounts, ordered by tenant ID and payment date.*/
select t.tenant_id, t.f_name as FirstName, t.l_name as LastName, p.payment_id, p.lease_id, p.payment_date, p.paid_amount
from tenant t
join lease l on t.tenant_id = l.tenant_id
join payment p on l.lease_id = p.lease_id
order by t.tenant_id, p.payment_date;


-- 2. query where tenant can see his lease with overview look
select tenant.f_name as FirstName , tenant.l_name as LastName, lease_start_date as StartDate, lease_end_date as EndDate , property.property_name as PropertyName
from lease 
join tenant on lease.tenant_id = tenant.tenant_id 
join property on lease.property_id = property.property_id 
order by tenant.l_name; 
 
-- 2. to make a payment for next lease (working on)
INSERT INTO payment (lease_id, payment_date, paid_amount)
SELECT l.lease_id, CURDATE(), u.rent_amount
FROM lease l
JOIN tenant t ON l.tenant_id = t.tenant_id
JOIN unit u ON l.property_id = u.property_id AND l.tenant_id = u.tenant_id
WHERE
    DATE_FORMAT(CURDATE(), '%Y-%m') NOT IN (
        SELECT DATE_FORMAT(payment_date, '%Y-%m') 
        FROM payment
        WHERE lease_id = l.lease_id
    );


-- 3. specific tenants[1,10] can view maintenance progress
select t.tenant_id as TenantID, t.f_name as FirstName, t.l_name as LastName, description, status
from tenant as t
join maintenance_request as mr on t.tenant_id = mr.tenant_id
where t.f_name = 'Jane' and t.l_name = 'Doe';


-- 4. every tenant can check status of maintenace request 
select description , status, phone_number as  Phonenumber
from maintenance_request as m join tenant as t on t.tenant_id = m.tenant_id   
where t.f_name = 'Jane' and t.l_name = 'Doe' ; -- pick a tenant id to view the status


-- 5. update maintenance status 
update maintenance_request
set status = 'completed'
where request_id = 1; -- select the correct id to view status


/*TENANT QUERY ENDS*/

/*PROPERTY_MANAGER  QUERY STARTS */

-- 6. property manager can view the total paid amount of rent for each tenant in a lease 
-- This query will return the tenant_id, first name, last name, lease_id, and the total paid amount of rent for each tenant in a lease. 
-- The results are grouped by tenant and lease, and ordered by tenant_id.
select  l.lease_id, t.tenant_id as TenantID, t.f_name as FirstName, t.l_name as LastName, sum(p.paid_amount) as TotalPaid
from tenant as t
join lease as l on t.tenant_id = l.tenant_id
join payment as p on l.lease_id = p.lease_id
group by t.tenant_id, l.lease_id, t.f_name, t.l_name
order by t.tenant_id;

-- 1. Check the occupancy status and update the property table
select  unit.unit_id as Room, occupancy_status from unit where unit_id = 5;

-- 3.view any maintenance request--
select * from maintenance_request;
-- 4.send maintenance request for property_manager --
   INSERT INTO maintenance_request ( property_id, tenant_id, technician_id,unit_id, description, status)
VALUES (1, 4, 2,4, 'Leaky faucet in ',  'open');
  
-- 5. change the occupancy status of units --
UPDATE unit
SET occupancy_status = 'occupied'
WHERE unit_id =  5 AND occupancy_status = 'vacant';

 /*PROPERTY_MANAGER  QUERY ENDS */
 
 /*TECHNICIAN QUERY STARTS */ 
 
 -- 1.update maintenance request after work has been finished --
 UPDATE maintenance_request 
SET  status = 'completed'
WHERE unit_id =  5 AND  status = 'open';
-- 3.view maintenance history of units for specifc unit --
select * from  maintenance_request where unit_id = 7;
-- 4. view the occupancy status of units --
select occupancy_status from unit where unit_id = 2;
-- 5.issue maintenance charges the number 3  query will do same  --

  /*TECHNICIAN QUERY ENDS */
 