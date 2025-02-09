-- Reference: https://www.sqlitetutorial.net/sqlite-cross-join/
-- Create table ranks
CREATE TABLE ranks
(
    rank TEXT NOT NULL
);

-- Create table suits
CREATE TABLE suits
(
    suit TEXT NOT NULL
);

-- Insert data into ranks
INSERT INTO ranks(rank)
VALUES ('2'),
       ('3'),
       ('4'),
       ('5'),
       ('6'),
       ('7'),
       ('8'),
       ('9'),
       ('10'),
       ('J'),
       ('Q'),
       ('K'),
       ('A');

-- Insert data into suits
INSERT INTO suits(suit)
VALUES ('Clubs'),
       ('Diamonds'),
       ('Hearts'),
       ('Spades');

-- Cross join ranks and suits
SELECT *
FROM ranks
         CROSS JOIN suits
ORDER BY 2