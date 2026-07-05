-- ============================================================
-- SQL Data Warehouse Project - Source Data Loading Script
-- MySQL Version
--
-- Purpose:
-- 1. Load raw CRM and ERP source files into Bronze/Staging tables.
-- 2. Preserve source data as received from source systems.
-- 3. Skip CSV header rows.
-- 4. Use comma as column delimiter.
-- 5. Use newline as row delimiter.
--
-- Note:
-- Ensure all CSV files are copied under:
-- C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/
-- ============================================================


-- ============================================================
-- CRM CUSTOMER INFORMATION
-- Loads customer master data from CRM source.
-- ============================================================
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/sql-data-warehouse-project-main/sql-data-warehouse-project-main/datasets/source_crm/cust_info.csv'
INTO TABLE crm_cust_info
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- ============================================================
-- CRM PRODUCT INFORMATION
-- Loads product master data from CRM source.
-- ============================================================
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/sql-data-warehouse-project-main/sql-data-warehouse-project-main/datasets/source_crm/prd_info.csv'
INTO TABLE crm_prd_info
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- ============================================================
-- CRM SALES DETAILS
-- Loads transactional sales data from CRM source.
-- ============================================================
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/sql-data-warehouse-project-main/sql-data-warehouse-project-main/datasets/source_crm/sales_details.csv'
INTO TABLE crm_sales_details
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- ============================================================
-- ERP CUSTOMER DATA
-- Loads customer reference data from ERP source.
-- ============================================================
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/sql-data-warehouse-project-main/sql-data-warehouse-project-main/datasets/source_erp/CUST_AZ12.csv'
INTO TABLE erp_cust_az12
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- ============================================================
-- ERP LOCATION DATA
-- Loads country/location mapping information.
-- ============================================================
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/sql-data-warehouse-project-main/sql-data-warehouse-project-main/datasets/source_erp/LOC_A101.csv'
INTO TABLE erp_loc_a101
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- ============================================================
-- ERP PRODUCT CATEGORY DATA
-- Loads product category hierarchy/reference data.
-- ============================================================
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/sql-data-warehouse-project-main/sql-data-warehouse-project-main/datasets/source_erp/PX_CAT_G1V2.csv'
INTO TABLE erp_px_cat_g1v2
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- ============================================================
-- End of File
-- ============================================================
