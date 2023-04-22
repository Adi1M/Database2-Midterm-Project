-- Function which counts the number of records
CREATE OR REPLACE FUNCTION count_records(table_name VARCHAR)
    RETURNS INT
AS
$$
DECLARE
    record_count INT;
BEGIN
    EXECUTE 'SELECT count(*) FROM ' || table_name INTO record_count;
    RETURN record_count;
END
$$
    LANGUAGE plpgsql;


-- Add user-defined exception which disallows to enter title of item (e.g. book) to be less than 5 characters
CREATE OR REPLACE FUNCTION check_title_length(title text)
    RETURNS void AS
$$
BEGIN
    IF CHAR_LENGTH(title) < 5 THEN
        RAISE EXCEPTION 'Title must be at least 5 characters long.';
    END IF;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_title_length_trigger
    BEFORE INSERT
    ON Book
    FOR EACH ROW
EXECUTE FUNCTION check_title_length(NEW.title);