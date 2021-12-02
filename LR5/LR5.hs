import Data.Map (fromListWith, toList)
frequency :: (Ord a) => [a] -> [(a, Int)]
frequency xs = toList (fromListWith (+) [(x, 1) | x <- xs])
fromKeyboardToConsole = do
    putStrLn "Enter line:"
    line <- getLine
    answerArray <- return (frequency line)
    print answerArray

fromKeyboardToFile = do
    putStrLn "Enter line:"
    line <- getLine
    answerArray <- return (frequency line )
    writeFile "LR5//fromKeyboardOutput.txt" (show answerArray)

fromFileToConsole = do
        line <- readFile "LR5//input.txt"
        answerArray <- return (frequency line )
        print(answerArray)

fromFileToFile = do
    line <- readFile "LR5//input.txt"
    answerArray <- return (frequency line )
    writeFile "LR5//fromOutPut" (show answerArray)