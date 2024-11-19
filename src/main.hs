-- Write printAMessage here
printAMessage :: Show a => a -> IO ()
printAMessage x = print x

-- Write division here
division :: Double -> Double -> Maybe Double
division x y =
    if x == y
        then Nothing 
        else Just (x / y)

-- Write factorial here
factorial :: Int -> Int
factorial n = 
    if n == 1 || n == 0
        then 1
        else n * factorial (n -1)

-- Write factList here
factList :: Int -> [Int]
factList n = 
    [factorial x | x <- [1..n]]

-- Write merge here
merge :: [Int] -> [Int] -> [Int]
merge [] ls2 = ls2
merge ls1 [] = ls1
merge (i:is) (j:js)
    | i <= j = i : merge is (j:js)
    | otherwise = j : merge (i:is) js


main = do 
    printAMessage "Hello, world!"
    print(division 12 6)
    print(division 12 12)
    print(factorial 3)
    print(factList 7)
    let ls1 = [2, 4, 6, 8]
    let ls2 = [3, 5, 7]
    print(merge ls1 ls2)
    