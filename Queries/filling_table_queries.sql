INSERT INTO Category (category_name)
VALUES ('Fiction'),
       ('Non-fiction'),
       ('Science fiction'),
       ('Mystery'),
       ('Romance'),
       ('Biography'),
       ('History'),
       ('Cooking'),
       ('Art'),
       ('Travel');


INSERT INTO Publisher (publisher_name, address)
VALUES ('Penguin Random House', '123 Main Street, New York, NY'),
       ('HarperCollins', '456 Elm Street, San Francisco, CA'),
       ('Simon & Schuster', '789 Maple Ave, Chicago, IL'),
       ('Oxford University Press', '10 Downing Street, London, UK'),
       ('Hachette Book Group', '1 Rue Montmartre, Paris, France'),
       ('Macmillan Publishers', '2-4 Crinan St, London, UK'),
       ('Bloomsbury Publishing', '50 Bedford Square, London, UK'),
       ('Scholastic Corporation', '557 Broadway, New York, NY'),
       ('Wiley', '111 River St, Hoboken, NJ'),
       ('Elsevier', 'Radarweg 29, Amsterdam, Netherlands');


INSERT INTO Author (author_name, contact_information)
VALUES ('J.K. Rowling', 'jkrowling@hogwarts.edu'),
       ('Stephen King', 'stephenking@horror.com'),
       ('Dan Brown', 'danbrown@codebreaker.com'),
       ('Agatha Christie', 'agathachristie@mystery.com'),
       ('Jane Austen', 'janeausten@regency.com'),
       ('Haruki Murakami', 'harukimurakami@fiction.com'),
       ('Ernest Hemingway', 'ernesthemingway@literature.com'),
       ('Toni Morrison', 'tonimorrison@nobelprize.com'),
       ('Neil Gaiman', 'neilgaiman@fantasy.com'),
       ('Maya Angelou', 'mayaangelou@poetry.com');


INSERT INTO Customer (customer_name, address, contact_information)
VALUES
('Alice Brown', '12 Smith Street, Boston, USA', 'alicebrown@gmail.com'),
('Benjamin Davis', '87 Park Avenue, New York, USA', 'bdavis@yahoo.com'),
('Charles Lee', '22 West Street, San Francisco, USA', 'clee@hotmail.com'),
('Deborah Martinez', '456 Maple Road, Los Angeles, USA', 'dmartinez@gmail.com'),
('Edward Kim', '67 Pine Street, Chicago, USA', 'ekim@aol.com'),
('Frances Rodriguez', '98 Oak Avenue, Miami, USA', 'frodriguez@hotmail.com'),
('George Thompson', '234 Main Street, Atlanta, USA', 'gthompson@yahoo.com'),
('Hannah Hernandez', '765 Oak Street, Houston, USA', 'hhernandez@gmail.com'),
('Isabella Nguyen', '33 Elm Street, Seattle, USA', 'inguyen@aol.com'),
('James Wilson', '56 Maple Street, Washington D.C., USA', 'jwilson@hotmail.com');


INSERT INTO OrderHeader (order_date, customer_id)
VALUES ('2022-01-01', 1),
       ('2022-01-02', 2),
       ('2022-01-03', 3),
       ('2022-01-04', 4),
       ('2022-01-05', 5),
       ('2022-01-06', 6),
       ('2022-01-07', 7),
       ('2022-01-08', 8),
       ('2022-01-09', 9),
       ('2022-01-10', 10);


INSERT INTO Book (title, author_id, category_id, publisher_id, price, quantity)
VALUES ('Harry Potter and the Philosopher''s Stone', 1, 1, 1, 10.99, 100),
       ('The Shining', 2, 1, 2, 9.99, 75),
       ('The Da Vinci Code', 3, 2, 3, 12.99, 120),
       ('Murder on the Orient Express', 4, 3, 4, 8.99, 90),
       ('Pride and Prejudice', 5, 1, 5, 7.99, 80),
       ('Norwegian Wood', 6, 1, 6, 11.99, 110),
       ('The Old Man and the Sea', 7, 1, 7, 6.99, 60),
       ('Beloved', 8, 1, 8, 14.99, 130),
       ('American Gods', 9, 3, 9, 10.99, 95),
       ('I Know Why the Caged Bird Sings', 10, 1, 10, 9.99, 85);


INSERT INTO OrderDetail (order_id, book_id, quantity, price)
VALUES (1, 1, 2, 21.98),
       (1, 3, 1, 12.99),
       (1, 5, 3, 23.97),
       (2, 2, 2, 19.98),
       (2, 4, 2, 17.98),
       (2, 6, 1, 11.99),
       (3, 7, 4, 27.96),
       (3, 8, 2, 29.98),
       (4, 9, 3, 32.97),
       (4, 10, 1, 9.99),
       (5, 1, 5, 54.95),
       (5, 2, 2, 19.98),
       (6, 3, 3, 38.97),
       (7, 4, 1, 8.99),
       (8, 5, 2, 15.98),
       (9, 6, 4, 47.96),
       (10, 7, 3, 20.97);