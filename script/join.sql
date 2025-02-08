SELECT *
FROM artists as ar
         JOIN albums as al
              ON ar.ArtistId = al.ArtistId
WHERE ar.name LIKE 'J%';