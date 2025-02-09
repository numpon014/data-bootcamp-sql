-- Intersect = which books are in both the bookshop table and the favourite book table
SELECT id
FROM book_shop
INTERSECT
SELECT id
FROM favourite_book;

-- Except = which books are in the bookshop table but not in the favourite book table
SELECT id
FROM book_shop
EXCEPT
SELECT id
FROM favourite_book;