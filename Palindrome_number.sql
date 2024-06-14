WITH data AS (SELECT 12321 AS inputNumber)
SELECT 
    CASE 
        WHEN CAST(inputNumber AS VARCHAR) = REVERSE(CAST(inputNumber AS VARCHAR)) THEN 'Palindrome'
        ELSE 'Not Palindrome'
    END AS PalindromeCheck
FROM data;