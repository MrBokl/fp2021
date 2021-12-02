-- Лабораторна робота №5
-- студент групи АнД-31
-- Українець Андрій Олександрович
-- Варіант №7

-- Мета роботи: Ознайомитись з модульною органiзацiєю програм та засобами введення-виведення. Набути досвiду компiляцiї Haskell-програм.

-- Завдання №1.Визначити частоту кожного елемента списку, напр.: "aaabbcaadddd"⇒
-- [(’a’,5), (’b’,2), (’c’,1), (’d’,4)].


import Data.Map (fromListWith, toList)
frequency :: (Ord a) => [a] -> [(a, Int)]
frequency xs = toList (fromListWith (+) [(x, 1) | x <- xs])


-- Завдання 1юРеалiзувати та скомпiлювати одну з програм, розроблених у лабораторнiй роботi №3 для Вашого варiанта з введенням даних:
-- а) з клавiатури, б) з файлу та виведенням результатiв: в) на екран, г) у файл.

fromKeyboardToConsole = do
    putStrLn "Enter line:"
    line <- getLine
    answerArray <- return (frequency line)
    print answerArray
-- Результат роботи:
-- Для тестування потрібно ввести такі команди:
-- ghci
-- :l Lab5\\Lab5.hs
-- fromKeyboardToConsole
-- aadddadada
-- [('a',5),('d',4)]

fromKeyboardToFile = do
    putStrLn "Enter line:"
    line <- getLine
    answerArray <- return (frequency line )
    writeFile "LR5//fromKeyboardOutput.txt" (show answerArray)
-- Результат роботи:
-- Для тестування потрібно ввести такі команди:
-- fromKeyboardToFile
-- Enter line
-- aaddddaaaa
-- Переглянути файл "fromKeyboardOutput.txt"
-- [('a',6),('d',4)]
fromFileToConsole = do
        line <- readFile "LR5//input.txt"
        answerArray <- return (frequency line )
        print(answerArray)

-- Результат роботи:
-- Для тестування потрібно ввести такі команди:
-- fromFileToConsole
-- Дані беруться з файлу "input.txt"
-- [('a',5),('b',2),('c',1),('d',4)]


fromFileToFile = do
    line <- readFile "LR5//input.txt"
    answerArray <- return (frequency line )
    writeFile "LR5//fromOutPut" (show answerArray)

-- Результат роботи:
-- Для тестування потрібно ввести такі команди:
-- fromFileToFile
-- Дані беруться з файлу "input.txt"
-- Переглянути файл "fromFileOutPut.txt"
-- [('a',5),('b',2),('c',1),('d',4)]


-- Висновок. У ході виконання лабораторної роботи №4 було взято одне з завдань третьої лабораторної роботи і розроблено для нього такі ф-ї.
-- Введення з клавіатури та файлу, а також вивід у консоль і у файл.