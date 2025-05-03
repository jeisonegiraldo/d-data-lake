CALL `data-lake-arch.silver_transaction.sp_load_transaction`
(
  '2025-04-01',
  '2025-04-30',
  'data-lake-arch.silver_transaction.transaction',
  'bigquery-public-data.thelook_ecommerce.order_items'
)
