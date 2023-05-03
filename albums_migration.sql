USE codeup_test_db;


CREATE TABLE albums (
    id int UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    release_date INT, sales FLOAT,
    genre VARCHAR(100),
    PRIMARY KEY (id)
);