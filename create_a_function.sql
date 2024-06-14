DELIMITER //

CREATE FUNCTION add_val(x INT, y INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE result INT;
    SET result = x + y;
    RETURN result;
END//

DELIMITER ;

SELECT add_values(5, 3);
