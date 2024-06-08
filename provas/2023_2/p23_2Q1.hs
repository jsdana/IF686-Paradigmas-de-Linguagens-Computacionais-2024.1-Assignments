fibonacciHelper :: Int -> Int
fibonacciHelper 0 = 0
fibonacciHelper 1 = 1
fibonacciHelper n = fibonacciHelper (n-2) + fibonacciHelper (n-1)

fibonacci :: [Int]
fibonacci = map fibonacciHelper [0..]