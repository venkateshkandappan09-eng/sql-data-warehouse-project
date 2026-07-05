/*
=============================================================
Create Bronze, Silver and Gold Databases
=============================================================
Script Purpose:
    This script creates three separate databases for implementing
    the Medallion Architecture in a Data Warehouse project:

    1. data_warehouse_bronze - Stores raw source data.
    2. data_warehouse_silver - Stores cleansed and transformed data.
    3. data_warehouse_gold   - Stores business-ready dimensional models
                               and reporting data.

    The databases are created only if they do not already exist,
    ensuring that existing data remains unaffected.
=============================================================
*/

CREATE DATABASE IF NOT EXISTS data_warehouse_bronze;
CREATE DATABASE IF NOT EXISTS data_warehouse_silver;
CREATE DATABASE IF NOT EXISTS data_warehouse_gold;
SHOW DATABASES;
