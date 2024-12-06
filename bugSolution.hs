The solution involves forcing the evaluation of the list segment before applying the `sum` function. This can be achieved using `foldl'` instead of `sum` or by using the `$!` strict evaluation operator in the `sum` function. This ensures that only the finite part of the infinite list is evaluated before applying the summation.

```haskell
import Data.List

calculateSums :: Int -> [Int]
calculateSums n = take n $ map (^2) [1..] 

main :: IO ()
main = do
  let result = foldl' (+) 0 $ calculateSums 5 -- Using foldl'
  print result

--Alternative solution using the strict evaluation operator
main :: IO ()
main = do
  let result = sum $! (calculateSums 5) --Using the strict evaluation operator
  print result
```