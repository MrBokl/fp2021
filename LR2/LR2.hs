-- Лабораторна робота №2
-- Виконав Студент групи АнД-31
-- Майданик Андрій Олександрович,Варіант №7
-- Мета - Набути досвiду визначення рекурсивних функцiй, використання механiзму зiставлення 
-- зi зразком i роботи з кортежами та списками.

-- Завдання №1.Послiдовнiсть тотожних елементiв списку замiнити одним елементом,
-- напр.: [1,1,1,5,5,3, 1,1,222,222,222,222] ⇒ [1,5,3,1,222].
remrep :: Eq a => [a] -> [a]
remrep xs = reverse (iter xs [])
  where iter (x:xs) res | x `elem` res = iter xs (filter (/= x) res)
        iter (x:xs) res = iter xs (x:res)
        iter [] res = res

-- Команды,щоб працювала програма - :l путь к файлу(//Users//...//LR2.hs)
-- remrep [1,1,1,1,2,2,2,3,3,3]

-- Завдання №2.Визначити, чи два числа взаємно простi.

isPrime :: Integer -> Integer -> Integer
isPrime f s | (s>f) = isPrime s f
            | (s==0) = f
            | otherwise = isPrime s(f `rem` s) -- rem цілочисельна остача --

mutual :: Integer -> Integer -> Bool 
mutual x y = (isPrime x y) == 1

-- Команды,щоб працювала програма - :l путь к файлу(//Users//...//LR2.hs)
-- isPrime 5 6

-- Висновок:Під час виконання лабораторної роботи,я вивичив,як працюють рекурсивні функції в haskell та як працюють кортежі

--jdkfgjldjglkdhjgvlkdhjvglksdhkl