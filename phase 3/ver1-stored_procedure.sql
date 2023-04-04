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
select concat(fName, ' ', lName) as Tenant, sum(paid_amount) as PaidTotal
from payment
inner join lease on payment.lease_id = lease.lease_id
inner join tenant on lease.tenant_id = tenant.tenant_id
where tenant.tenant_id = tenantId and payment_date >= startDate and payment_date <= endDate;

end; $$

call GetTotalRentPaidByTenantInPeriod(1, '2022-01-01', '2022-12-31');
call GetTotalRentPaidByTenantInPeriod(10, '2022-01-01', '2022-12-31');