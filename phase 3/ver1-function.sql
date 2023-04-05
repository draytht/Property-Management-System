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
      SET late_fee = 35.0;
       
    ELSE
     SET late_fee = 0;
      
    END IF;
    
    RETURN late_fee;
END //
DELIMITER ;
SELECT  rent_amount, paid_amount , payment_id, paid_amount, late_fee(payment_date, unit.rent_amount, paid_amount) AS late_fee 
FROM payment join unit on lease_id ;