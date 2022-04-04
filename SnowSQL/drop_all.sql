set database_name = 'GOINGDATAWAY_SALES';
Use database identifier($database_name);

DROP SCHEMA IF EXISTS RAW CASCADE;

DROP SCHEMA IF EXISTS CURATED CASCADE;

DROP DATABASE IF EXISTS identifier($database_name);