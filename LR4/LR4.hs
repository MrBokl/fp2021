{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
import Control.Concurrent.STM (check)
-- Лабораторна робота №4
-- студент групи АнД-31
-- Майданик Андрій Олександрович
-- Варіант №17

-- Мета роботи: Ознайомитись з системою типiв та класiв типiв. Набути досвiду визначення нових типiв та класiв типiв i їх використання.

-- Завдання 1.Зберiгаються данi про публiкацiї, якi можуть бути книгою (ав-
-- тор/спiвавтори, назва, мiсто, видавництво, рiк), статтею (автор/спiвавтори, назва статтi, назва журналу, рiк, номер журналу, сторiнки) 
-- або тезами доповiдi
-- (автор/спiвавтори, назва доповiдi, назва конференцiї, мiсто, рiк, сторiнки). Визначне функцiї для :

data Book = Book String String String Int deriving (Eq, Show)
authorOfBook (Book author _ _ _)=author
nameOfBook (Book _ name _ _)=name
cityOfPubl (Book _ _ city _)=city
yearOfPubl (Book _ _ _ year)=year

books = [(Book "Mark Twen" "Tom Sayer" "Florida" 1876),
         (Book "Remark Erich Maria" "Three Comrades" "Berlin" 1936),
         (Book "Joanne Rowling" "Harry Potter" "London" 1997)
        ]

checkAuthor author (x : xs) = if author == authorOfBook x then nameOfBook x else checkAuthor author xs



findBooksByAuthor author = [checkAuthor author books]

stat = ("Amount of books", length books)

-- Результат роботи:
-- Для тестування потрібно ввести так команди:
-- ghci
-- :l Lab4\\Lab4.hs
-- ffindBooksByAuthor "Имя Автора"





-- Висновок. У ході виконання лабораторної роботи №4 ми навчилися працювати з класами. Було сворено записник в якому записано: ім'я,
-- номер мобільного телефону та дата народження. Також створили фукцію, яка шукає людину за першою літерою імені, якщо людей декілька,
-- то виведе ту кількість, яка занесена у записник.