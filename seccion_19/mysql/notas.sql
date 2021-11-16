DOWNLOADER_CLIENT_TLS_METHOD = "TLSv1.2"

sudo apt-get install mysql-server

mysql -u root -p

SHOW DATABASES;

USE sample_db

CREATE DATABASE sample_db;

CREATE TABLE table_example(

first_name VARCHAR(20),

last_name VARCHAR(20),

 gender CHAR(1),

 birthday DATE);

SELECT * FROM table_example;

INSERT INTO table_example(

    first_name, last_name, gender, birthday)

    VALUES(

        'Mark','Smith', 'M', '1990-01-01');

QUIT

TRUNCATE TABLE table_example;

DROP DATABASE sample_db;

USE books_db

SELECT * FROM books_table;

CREATE TABLE books_table(
    rating VARCHAR(20),
    product_type VARCHAR(20),
    upc VARCHAR(20),
    title VARCHAR(20));

scrapy crawl books

sudo apt-get install mysql-client


docker inspect mysql_db_1 | grep IPAddress

 docker logs mysql_db_1 | tail -n 2  

 mysql -u root -p -h 127.0.0.1 -P 3306 


INSERT IGNORE INTO books_table(rating, product_type, upc, title) VALUES('2', 'hola', '22', 'hola');

 {"title": "Sharp Objects", "rating": "Four", "upc": "e00eb4fd7b871a48", "product_type": "Books"},

 INSERT IGNORE INTO books_table(title, rating, upc, product_type) VALUES('Sharp Objects', 'Four', 'e00eb4fd7b871a48', 'Books');

 DOWNLOADER_CLIENT_TLS_METHOD = "TLSv1.2"


docker volume create mongodb-data
docker-compose -f /home/oracle/Documentos/AWS/scrapy_course/seccion_19/mongodb/mongodb.yaml  up -d


docker volume create mysql-db-data 