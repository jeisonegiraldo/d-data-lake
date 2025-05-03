CREATE TABLE IF NOT EXISTS `data-lake-arch.operation.tables`
(
process_date DATE,
table STRING,
type STRING,
_rows INT ,
_rows_origin INT ,
duplicates INT 
);
