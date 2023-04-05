use pms;

create view outstanding_m_request_veiw as select description , status, phone_number as 'tenant\'s phone'  from maintenance_request as m join tenant as t on 
t.tenant_id = m.tenant_id   where m.status = 'open';

select  *  from   outstanding_m_request_veiw; 