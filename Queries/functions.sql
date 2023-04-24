-- Add user-defined exception which disallows to enter title of item (e.g. book) to be less than 5 characters
CREATE
    OR REPLACE FUNCTION check_title_length(title text)
    RETURNS void AS
$$
BEGIN
    IF
        CHAR_LENGTH(title) < 5 THEN
        RAISE EXCEPTION 'Title must be at least 5 characters long.';
    END IF;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER check_title_length_trigger
    BEFORE INSERT
    ON Book
    FOR EACH ROW
EXECUTE FUNCTION check_title_length(NEW.title);

-- Function which counts the number of records
CREATE OR REPLACE FUNCTION show_row_count()
RETURNS TRIGGER AS $$
DECLARE
    row_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO row_count FROM AUTHOR;
    RAISE NOTICE 'Current number of rows in the table: %', row_count;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION show_row_count1()
RETURNS TRIGGER AS $$
DECLARE
    row_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO row_count FROM BOOK;
    RAISE NOTICE 'Current number of rows in the table: %', row_count;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION show_row_count2()
RETURNS TRIGGER AS $$
DECLARE
    row_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO row_count FROM category;
    RAISE NOTICE 'Current number of rows in the table: %', row_count;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION show_row_count3()
RETURNS TRIGGER AS $$
DECLARE
    row_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO row_count FROM CUSTOMER;
    RAISE NOTICE 'Current number of rows in the table: %', row_count;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION show_row_count4()
RETURNS TRIGGER AS $$
DECLARE
    row_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO row_count FROM orderdetail;
    RAISE NOTICE 'Current number of rows in the table: %', row_count;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION show_row_count5()
RETURNS TRIGGER AS $$
DECLARE
    row_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO row_count FROM orderheader;
    RAISE NOTICE 'Current number of rows in the table: %', row_count;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION show_row_count6()
RETURNS TRIGGER AS $$
DECLARE
    row_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO row_count FROM publisher;
    RAISE NOTICE 'Current number of rows in the table: %', row_count;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION change_quantity()
RETURNS TRIGGER AS $$
DECLARE
    detail_quan int;
    recent_id int;
BEGIN
    SELECT NEW.quantity, new.book_id INTO detail_quan, recent_id FROM orderdetail, BOOK
    WHERE NEW.BOOK_ID = BOOK.book_id;
    UPDATE book set quantity = quantity - detail_quan where book_id = recent_id;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;




