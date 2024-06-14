WITH data AS (SELECT 'hannah' AS inputString)
SELECT 
    CASE 
        WHEN inputString = REVERSE(inputString) THEN 'Palindrome'
        ELSE 'Not Palindrome'
    END AS PalindromeCheck
FROM data;
