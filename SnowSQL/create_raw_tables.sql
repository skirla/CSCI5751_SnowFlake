set database_name = 'GOINGDATAWAY_SALES';
set schema_name = 'RAW';

Use database identifier($database_name);
Use schema identifier($schema_name);

CREATE TABLE IF NOT EXISTS customers(
                        CustomerID int,
                        FirstName varchar,
                        MiddleInitial varchar,
                        LastName varchar)
COMMENT='Customers Information';


CREATE TABLE IF NOT EXISTS employees(
                        EmployeeID int,
                        FirstName varchar,
                        MiddleInitial varchar,
                        LastName varchar,
                        Region varchar)
COMMENT='Employee Information';


CREATE TABLE IF NOT EXISTS products(
                        ProductID int,
                        Name varchar,
                        Price decimal)
COMMENT='Products Information';


CREATE TABLE IF NOT EXISTS sales(
                        OrderID int,
                        SalesPersonID int,
                        CustomerID int,
                        ProductID int,
                        Quantity int,
                        Date timestamp)
COMMENT='Sales Information';