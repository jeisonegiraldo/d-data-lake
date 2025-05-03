CREATE TABLE IF NOT EXISTS `data-lake-arch.quality.quantitative`
(
process_date DATE,
table STRING,
column STRING ,
cant INT ,
_nulls INT,
avg  FLOAT64 ,
min FLOAT64 ,
max FLOAT64 ,
std FLOAT64 
);


