
CALL `data-lake-arch.silver_transaction.sp_load_product`
(
  'data-lake-arch.silver_transaction.product',
  'bigquery-public-data.thelook_ecommerce.products' ,
  'data-lake-arch.operation.tables'
);

CALL `data-lake-arch.silver_transaction.sp_load_transaction`
(
  '2025-04-01',
  '2025-04-30',
  'data-lake-arch.silver_transaction.transaction',
  'bigquery-public-data.thelook_ecommerce.order_items'
) ;


CALL `data-lake-arch.gold_ba.sp_load_ba_sales`
(
  '2025-04' ,
  'data-lake-arch.gold_ba.ba_sales',
  'data-lake-arch.silver_transaction.transaction',
  'data-lake-arch.silver_transaction.product'
) ;

CALL `data-lake-arch.quality.sp_load_quantitative`
(
   'data-lake-arch.quality.quantitative',
  'data-lake-arch.gold_ba.ba_sales',
  '2025-04-01'
) ;
