set database_name = 'GOINGDATAWAY_SALES';

Create or replace database identifier($database_name);
Use database identifier($database_name);

create schema if not exists raw;

create schema if not exists curated;



