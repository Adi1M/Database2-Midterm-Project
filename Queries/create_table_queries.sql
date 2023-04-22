CREATE TABLE Category
(
    category_id   SERIAL       NOT NULL,
    category_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (category_id)
);

CREATE TABLE Publisher
(
    publisher_id   SERIAL       NOT NULL,
    publisher_name VARCHAR(255) NOT NULL,
    address        VARCHAR(255) NOT NULL,
    PRIMARY KEY (publisher_id)
);

CREATE TABLE Author
(
    author_id           SERIAL       NOT NULL,
    author_name         VARCHAR(255) NOT NULL,
    contact_information VARCHAR(255) NOT NULL,
    PRIMARY KEY (author_id)
);

CREATE TABLE Customer
(
    customer_id         SERIAL       NOT NULL,
    customer_name       VARCHAR(255) NOT NULL,
    address             VARCHAR(255) NOT NULL,
    contact_information VARCHAR(255) NOT NULL,
    PRIMARY KEY (customer_id)
);

CREATE TABLE OrderHeader
(
    order_id    SERIAL NOT NULL,
    order_date  DATE   NOT NULL,
    customer_id INT    NOT NULL,
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES Customer (customer_id)
);

CREATE TABLE Book
(
    book_id      SERIAL         NOT NULL,
    title        VARCHAR(255)   NOT NULL,
    author_id    INT            NOT NULL REFERENCES Author (author_id),
    category_id  INT            NOT NULL REFERENCES Category (category_id),
    publisher_id INT            NOT NULL REFERENCES Publisher (publisher_id),
    price        DECIMAL(10, 2) NOT NULL,
    quantity     INT            NOT NULL,
    PRIMARY KEY (book_id)
);

CREATE TABLE OrderDetail
(
    order_detail_id SERIAL         NOT NULL,
    order_id        INT            NOT NULL,
    book_id         INT            NOT NULL,
    quantity        INT            NOT NULL,
    price           DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (order_detail_id),
    FOREIGN KEY (order_id) REFERENCES OrderHeader (order_id),
    FOREIGN KEY (book_id) REFERENCES Book (book_id)
);

