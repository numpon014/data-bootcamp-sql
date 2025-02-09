-- inner join
SELECT *
FROM book_shop A
         INNER JOIN favourite_book B ON A.id = B.id;

-- left join
SELECT *
FROM book_shop A
         LEFT JOIN favourite_book B ON A.id = B.id;