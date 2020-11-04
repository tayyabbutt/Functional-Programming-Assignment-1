{- Functional Programming 1
   Assignment 1
 -}
-- \/\/\/ DO NOT MODIFY THE FOLLOWING LINES \/\/\/
module Assignment1(f1,f2,f3,f4,f5,f6,
            answer21,answer22,answer23,answer24,answer25,
            answer31,answer32,answer33,answer34,answer35,
            isPalindrome) where
-- /\/\/\ DO NOT MODIFY THE PRECEDING LINES /\/\/\

{- Exercise 1: Functions
   =====================

   Replace `undefined' in the following code to declare functions that have the
   indicated types. In each case, try to find a function that is defined for all
   possible input values, and where the result depends on all parameters.

   Provide a complete function specification (in accordance with our Coding
   Convention) for each function.
 -}

{- f1 x
   Returns x
   RETURNS: x (i.e. the input)
   EXAMPLES: f1 1 == 1
             f1 2 == 2
             f1 (-5) == -5
 -}
f1 :: Integer -> Integer
f1 x = x

{- f2 x y
   Computes the sum of arguments
   RETURNS: x + y (i.e. the sum of x and y)
   EXAMPLES: f2 2 5 == 7
             f2 15 (-11) == 4
 -}
f2 :: Integer-> Integer -> Integer
f2 x y = x + y

{- f3 x
   Computes the square and cube of x
   RETURNS: x^2 and x^3
   EXAMPLES: f3 2 == (4,8)
             f3 (-5) == (25,-125)
 -}
f3 :: Integer -> (Integer,Integer)
f3 x = (x^2, x^3)

{- f4 x y
   Computes the difference of the inputs
   RETURNS: x - y (i.e. the difference of x and y)
   EXAMPLES: f4 (10,9) == 1
             f4 (-5,5) == -10
 -}
f4 :: (Integer,Integer) -> Integer
f4 (x,y) = x - y

{- f5 x d s
   Creates a string with the inputs.
   RETURNS: A string which is a concatenation of the inputs x d s.
   EXAMPLES: f5 10 20.5 "string" == "1020.5string"
             f5 (-10) (-20.5) "string" == "-10-20.5string"
 -}
f5 :: Integer -> Double -> String -> String
f5 x d s = show (x) ++ show (d) ++ s

{- f6 x s t y
   Performs a string concatenation and computes the sum of the inputs.
   RETURNS: Returns x + y and s ++ t (i.e. the sum of x and y, and the string concatenation of s and t).
   EXAMPLES: f6 1 "abcd" "efgh" 2 == (3,"abcdefgh")
             f6 (-2) "comp" "uter" 10 == (8, "computer")
 -}
f6 :: Integer -> String -> String -> Integer -> (Integer, String)
f6 x s t y = (x + y, s ++ t)

{- Exercise 2: Overloading
   =======================

   Which of the following expressions is overloaded? (Try to remember/figure
   out the type of these expressions yourself. Use GHCi's :t only if you are
   stuck, or to check your answers.)

   Replace `undefined' by `True' if the corresponding expression is overloaded,
   and by `False' otherwise.
 -}

-- 42
answer21 :: Bool
answer21 = True 

-- (<)
answer22 :: Bool
answer22 = True

-- "apple" < "banana"
answer23 :: Bool
answer23 = False

-- \x -> x
answer24 :: Bool
answer24 = False 

-- \x -> x==x
answer25 :: Bool
answer25 = True

{- Exercise 3: Polymorphism
   ========================

   Which of the following expressions is polymorphic? (Try to remember/figure
   out the type of these expressions yourself. Use GHCi's :t only if you are
   stuck, or to check your answers.)

   Replace `undefined' by `True' if the corresponding expression is polymorphic,
   and by `False' otherwise.
 -}

-- \x -> x
answer31 :: Bool
answer31 = True

-- (,)
answer32 :: Bool
answer32 = True

-- head
answer33 :: Bool
answer33 = True

-- head "not polymorphic"
answer34 :: Bool
answer34 = False

-- id id
answer35 :: Bool
answer35 = True

{- Exercise 4: Palindromes
   =======================

   A palindrome is a sequence of characters that reads the same backward as
   forward: for instance, "racecar".

   Declare a function `isPalindrome' that returns `True' if (and only if) its
   argument is a palindrome.

   Hint: You can use the function `reverse' from the Haskell Prelude to obtain
   a string in reverse order.
 -}

{- (Remember to provide a complete function specification for isPalindrome.)
 -}

 {- isPalindrome s
   Determines whether the input s is a palindrome.
   RETURNS: True or False (i.e. a boolean).
   EXAMPLES: isPalindrome "hello" == False
             isPalindrome "madam" == True
             isPalindrome "aba" == True
 -}
isPalindrome :: String -> Bool
isPalindrome s = if (reverse (s) == s)
                   then True
                   else False