WITH RECURSIVE FibonacciSequence AS (
  SELECT 
    1 AS n,
    0 AS fib_n_minus_2,
    1 AS fib_n_minus_1,
    1 AS fib_n
  UNION ALL
  SELECT
    n + 1,
    fib_n_minus_1,
    fib_n,
    fib_n_minus_1 + fib_n AS fib_n_plus_1
  FROM FibonacciSequence
  WHERE fib_n_plus_1 <= 81
)
SELECT fib_n
FROM FibonacciSequence;