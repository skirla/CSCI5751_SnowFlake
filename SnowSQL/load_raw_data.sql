set database_name = 'GOINGDATAWAY_SALES';
set schema_name = 'RAW';

Use database identifier($database_name);
Use schema identifier($schema_name);

copy into customers
     from @s3_customers_stage
     pattern = '.*.csv';

copy into employees
     from @s3_employees_stage
     pattern = '.*.csv';

copy into products
     from @s3_products_stage
     pattern = '.*.csv';

copy into sales
     from @s3_sales_stage
     pattern = '.*.csv';