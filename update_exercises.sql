USE codeup_test_db;

SELECT * FROM albums WHERE release_date < 1980;
SELECT * FROM albums;
SELECT * FROM albums WHERE artist_name = 'Michael Jackson';
UPDATE albums SET sales = sales * 10;
UPDATE albums SET release_date = 1800 WHERE release_date < 1980;
UPDATE albums SET artist_name = 'Peter Jackson' Where artist_name = 'Michael Jackson';