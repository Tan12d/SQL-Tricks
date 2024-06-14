

CREATE TABLE sorted_numbers (
    number INT
);

INSERT INTO sorted_numbers (number) VALUES (1), (3), (5), (7), (9), (11), (13), (15);

SELECT * FROM sorted_numbers;

DELIMITER //

CREATE PROCEDURE h(
    IN search_value INT,
    OUT found BOOLEAN,
    OUT position INT
)
BEGIN
    DECLARE low INT DEFAULT 0;
    DECLARE high INT;
    DECLARE mid INT;
    DECLARE current_value INT;

    -- Initialize variables
    SELECT COUNT(*) INTO high FROM sorted_numbers;
    SET high = high - 1;
    SET found = FALSE;
    SET position = -1;

   f: WHILE low <= high DO
        SET mid = FLOOR((low + high) / 2);

        -- Retrieve the value at the midpoint
        SELECT number INTO current_value
        FROM sorted_numbers
        LIMIT mid, 1;

        -- Compare the value at the midpoint with the search value
        IF current_value = search_value THEN
            SET found = TRUE;
            SET position = mid;
            LEAVE f;
        ELSEIF current_value < search_value THEN
            SET low = mid + 1;
        ELSE
            SET high = mid - 1;
        END IF;
    END WHILE;
END //

DELIMITER ;

CALL h(3, @found, @position);

SELECT @found AS found, @position AS position;