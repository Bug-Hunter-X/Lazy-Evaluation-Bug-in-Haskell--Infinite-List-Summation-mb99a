# Haskell Lazy Evaluation Bug

This repository demonstrates a subtle bug in Haskell related to lazy evaluation and infinite lists. The program attempts to calculate the sum of squares of the first five natural numbers using an infinite list.  Due to Haskell's lazy evaluation, the `sum` function will not terminate if the input list is infinite, resulting in a program that hangs.

The `bug.hs` file contains the buggy code. The solution is shown in `bugSolution.hs` by forcing the evaluation of the list segment before applying the sum.