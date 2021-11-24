-- Лабораторна робота №3
-- Виконав Студент групи АнД-31
-- Майданик Андрій Олександрович,Варіант №7
-- Мета: Набути досвiду визначення та використання функцiй вищого порядку.
-- Завдання №1.Визначити частоту кожного елемента списку, напр.: "aaabbcaadddd"⇒
-- [(’a’,5), (’b’,2), (’c’,1), (’d’,4)].


import Data.Map (fromListWith, toList)



frequency :: (Ord a) => [a] -> [(a, Int)]
frequency xs = toList (fromListWith (+) [(x, 1) | x <- xs])

-- Завдання №2.Знайти простi дiльники числа.


pnd n = hpnd n n 2 0
        where hpnd s n k c | k >= s         = c
                           | n `mod` k == 0 = hpnd s (d n k) (k+1) (c+1)
                           | otherwise      = hpnd s n (k+1) c
              d n k        | n `mod` k == 0 = d (n `div` k) k
                           | otherwise      = n


-- //Users//andreymaydanik//Desktop//FIT/NP2021//LR3//LR3.hs