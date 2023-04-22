-- Procedure which does group by information
CREATE OR REPLACE PROCEDURE group_books_by_publisher()
    LANGUAGE plpgsql
AS
$$
BEGIN
    SELECT publisher.publisher_name, COUNT(book.book_id) AS book_count
    FROM publisher
             INNER JOIN book ON publisher.publisher_id = book.publisher_id
    GROUP BY publisher.publisher_name;
END;
$$;


-- Procedure which uses ROW_COUNT to determine the number of rows affected
CREATE OR REPLACE PROCEDURE update_book_price(author INT, sale_for_book DECIMAL)
    LANGUAGE plpgsql
AS
$$
DECLARE
    rows_affected INT;
BEGIN
    UPDATE book SET price = price - sale_for_book WHERE author_id = author;
    GET DIAGNOSTICS rows_affected = ROW_COUNT;
    RAISE NOTICE 'Updated % row(s)', rows_affected;
END;
$$;