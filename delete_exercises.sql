USE codeup_test_db;

SELECT * FROM albums WHERE date > 1991;

SELECT * FROM albums WHERE genre = 'Disco';

SELECT * FROM albums WHERE artist = 'The Beatles';

DELETE FROM albums WHERE date > 1991;

DELETE FROM albums WHERE genre = 'Disco';

DELETE FROM albums WHERE artist = 'The Beatles';