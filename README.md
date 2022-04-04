# CSCI5751: SNOWFLAKE Project

# S3 Endpoints for data
i. Customers - https://seng5709.s3.us-west-2.amazonaws.com/customers/  
ii. Employees - https://seng5709.s3.us-west-2.amazonaws.com/employees/  
iii. Products - https://seng5709.s3.us-west-2.amazonaws.com/products/   
iv. Sales - https://seng5709.s3.us-west-2.amazonaws.com/sales/

# Connection 
File: Config

## Download Data Files using AWS CLI [Optional]
1. aws s3 cp s3://seng5709/customers/ . --recursive --no-sign-request
2. aws s3 cp s3://seng5709/employees/ . --recursive --no-sign-request
3. aws s3 cp s3://seng5709/products/ . --recursive --no-sign-request
4. aws s3 cp s3://seng5709/sales/ . --recursive --no-sign-request

## Data Load Issues
* Employees data is separated by a comma but rest of the files are pipe delimited

## SQL Run Order
1. create_DB_schemas.sql
2. create_stages.sql
3. create_raw_tables.sql
4. load_raw_data.sql
5. drop_all.sql

