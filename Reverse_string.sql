WITH data AS (SELECT 'tanmoy' AS inputString)
SELECT 
    REVERSE(inputString) AS PalindromeCheck
FROM data;