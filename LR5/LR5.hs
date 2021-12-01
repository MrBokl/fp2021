repeatLine line n =  do
    l <- line
    replicate n [l]

fromKeyboardToConsole = do
    putStrLn "Enter line:"
    line <- getLine
    putStrLn "Enter number of repeats:"
    inputN <- getLine
    let n = read inputN :: Int
    answerArray <- return (repeatLine line n)
    print answerArray

fromKeyboardToFile = do
    putStrLn "Enter line:"
    line <- getLine
    putStrLn "Enter number of repeats:"
    inputN <- getLine
    let n = read inputN :: Int
    answerArray <- return (repeatLine line n)
    writeFile "fromKeyboardOutput.txt" (show answerArray)

fromFileToConsole = do
        line <- readFile "input.txt"
        answerArray <- return (repeatLine line 3)
        print(answerArray)

fromFileToFile = do
    line <- readFile "input.txt"
    answerArray <- return (repeatLine line 3)
    writeFile "fromFileOutput" (show answerArray)