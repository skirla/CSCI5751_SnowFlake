set database_name = 'GOINGDATAWAY_SALES';
set schema_name = 'RAW';

Use database identifier($database_name);
Use schema identifier($schema_name);


create or replace stage s3_customers_stage
  url = 's3://seng5709/customers/'
  file_format = (type = 'CSV' field_delimiter = '|' skip_header = 1);

create or replace stage s3_employees_stage
  url = 's3://seng5709/employees/'
  file_format = (type = 'CSV' field_delimiter = ',' skip_header = 1);

create or replace stage s3_products_stage
  url = 's3://seng5709/products/'
  file_format = (type = 'CSV' field_delimiter = '|' skip_header = 1);

create or replace stage s3_sales_stage
  url = 's3://seng5709/sales/'
  file_format = (type = 'CSV' field_delimiter = '|' skip_header = 1);