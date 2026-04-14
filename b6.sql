
DROP DATABASE IF EXISTS quanlybook;
CREATE DATABASE quanlybook;
USE quanlybook;

DROP TABLE IF EXISTS borrow_books;
DROP TABLE IF EXISTS books;

CREATE TABLE books (
    book_id CHAR(5),
    book_name VARCHAR(200),
    stock INT DEFAULT 0,
    price DECIMAL(10,2) DEFAULT 10000,
    import_date DATE
);

CREATE TABLE borrow_books (
    borrow_id INT AUTO_INCREMENT,
    book_id CHAR(5),
    borrow_date DATE DEFAULT (current_date()),
    return_date DATE
);