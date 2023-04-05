/***************************************************************
*  @paramaters:  rent , paid amount and date paid the payment.
*this function adds 35 dollars of  late fee:
* if over due or not paid in full by substructing the due date
* and the paid date. and substructing the paid_amount from  rent_amount if 
* both either is true it charges 35 dollars otherwise nothing is charged.
*@return : late fee charges in cured 
****************************************************************/
use pms;
 DELIMITER //
CREATE FUNCTION late_fee(paid_date DATE, rent_amount DECIMAL(10,2), paid_amount Decimal(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC 
BEGIN
 	
    DECLARE late_fee DECIMAL(10,2);
    DECLARE rent_due_date DATE;
    
    SET rent_due_date = DATE_FORMAT(paid_date, '%Y-%m-05');
    
    IF (paid_date > rent_due_date)  or (paid_amount < rent_amount) THEN
      SET late_fee =    35.0;
       
    ELSE
     SET late_fee = 0;
      
    END IF;
    
    RETURN late_fee;
END //
DELIMITER ;
/*calling the function with unit table lease table and 
payment table to display relevant 
fields and use some of the fields in 
the late_fee() function */
SELECT  rent_amount as rent,unit.unit_id as unit, paid_amount as paid ,  
	payment_date as 'paid on', 
	late_fee(payment_date, unit.rent_amount, paid_amount) AS late_fee 
	FROM payment join  unit join lease on unit.tenant_id = lease.tenant_id ;