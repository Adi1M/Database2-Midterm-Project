INSERT INTO Category (category_name) VALUES
('Fiction'),
('Non-Fiction'),
('Mystery'),
('Romance'),
('Science Fiction');

INSERT INTO Publisher (publisher_name, address) VALUES
('Penguin Random House', '1745 Broadway, New York, NY'),
('HarperCollins Publishers', '195 Broadway, New York, NY'),
('Hachette Book Group', '1290 Avenue of the Americas, New York, NY');

INSERT INTO Author (author_name, contact_information) VALUES
('Jane Austen', 'jane.austen@gmail.com'),
('Agatha Christie', 'agatha.christie@gmail.com'),
('Ernest Hemingway', 'ernest.hemingway@gmail.com'),
('J.D. Salinger', 'jd.salinger@gmail.com');

INSERT INTO Customer (customer_name, address, contact_information) VALUES
('John Smith', '123 Main Street, Anytown, USA', 'john.smith@gmail.com'),
('Jane Doe', '456 Broad Street, New York, USA', 'jane.doe@gmail.com');

INSERT INTO OrderHeader (order_date, customer_id) VALUES
('2023-04-22', 1),
('2023-04-22', 2);

INSERT INTO Book (title, author_id, category_id, publisher_id, price, quantity) VALUES
('Pride and Prejudice', 1, 4, 1, 9.99, 10),
('Murder on the Orient Express', 2, 3, 2, 12.99, 20),
('The Old Man and the Sea', 3, 2, 1, 8.99, 15),
('The Catcher in the Rye', 4, 4, 3, 10.99, 25);

INSERT INTO OrderDetail (order_id, book_id, quantity, price) VALUES
(1, 1, 2, 19.98),
(1, 3, 1, 8.99),
(2, 2, 3, 38.97),
(2, 4, 2, 21.98);