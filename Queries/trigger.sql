-- Create a trigger before insert on any entity which will show the current number of rows in the table
CREATE or REPLACE TRIGGER before_insert_show_row_count
BEFORE INSERT ON AUTHOR
FOR EACH ROW
EXECUTE FUNCTION show_row_count();

CREATE or REPLACE TRIGGER before_insert_show_row_count1
BEFORE INSERT ON book
FOR EACH ROW
EXECUTE FUNCTION show_row_count1();

CREATE OR REPLACE TRIGGER before_insert_show_row_count2
BEFORE INSERT ON category
FOR EACH ROW
EXECUTE FUNCTION show_row_count2();

CREATE OR REPLACE TRIGGER before_insert_show_row_count3
BEFORE INSERT ON customer
FOR EACH ROW
EXECUTE FUNCTION show_row_count3();

CREATE OR REPLACE TRIGGER before_insert_show_row_count4
BEFORE INSERT ON orderdetail
FOR EACH ROW
EXECUTE FUNCTION show_row_count4();

CREATE OR REPLACE TRIGGER before_insert_show_row_count5
BEFORE INSERT ON orderheader
FOR EACH ROW
EXECUTE FUNCTION show_row_count5();

CREATE OR REPLACE TRIGGER before_insert_show_row_count6
BEFORE INSERT ON publisher
FOR EACH ROW
EXECUTE FUNCTION show_row_count6();

CREATE OR REPLACE TRIGGER CHANGE_NUMBEROF_QUANTITY
AFTER INSERT ON orderdetail
FOR EACH ROW
EXECUTE FUNCTION CHANGE_QUANTITY();
