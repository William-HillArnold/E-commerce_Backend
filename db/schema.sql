-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

Use ecommerce_db;

CREATE TABLE Category (
    id INT NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(35) NOT NULL,
    PRIMARY KEY (id)
    );

CREATE TABLE Product (
    id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(35) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock VARCHAR(255) NOT NULL,
    category_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (category_id) REFERENCES Category(id)
    );

CREATE TABLE TABLE Tag (
    id INT NOT NULL AUTO_INCREMENT,
    tag_name VARCHAR(35) NOT NULL,
    PRIMARY KEY (id)
    );

CREATE TABLE Product_Tag (
    id INT NOT NULL AUTO_INCREMENT,
    product_id INT NOT NULL,
    tag_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (product_id) REFERENCES Product(id),
    FOREIGN KEY (tag_id) REFERENCES Tag(id)
    );