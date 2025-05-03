CALL `data-lake-arch.silver_transaction.sp_load_product`
(
  'data-lake-arch.silver_transaction.product',
  'bigquery-public-data.thelook_ecommerce.products' ,
  'data-lake-arch.operation.tables'
);
