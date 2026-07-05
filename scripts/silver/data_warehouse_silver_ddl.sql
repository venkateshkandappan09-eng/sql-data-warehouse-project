-- ============================================================
-- SQL Data Warehouse Project
-- Silver Layer - Source Tables Creation
-- MySQL Version
--
-- Purpose:
-- 1. Create Silver layer tables used for cleansing and transformation.
-- 2. Store structured source data from CRM and ERP systems.
-- 3. Add audit column (dwh_create_date) for load tracking.
-- 4. Prepare data for downstream business transformations.
--
-- Database:
-- data_warehouse_silver
-- ============================================================

USE data_warehouse_silver;


CREATE TABLE IF NOT EXISTS crm_cust_info (
    cst_id INT,
    cst_key VARCHAR(50),
    cst_firstname VARCHAR(100),
    cst_lastname VARCHAR(100),
    cst_marital_status CHAR(1),
    cst_gndr CHAR(1),
    cst_create_date DATE,
    dwh_create_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS crm_prd_info (
    prd_id INT,
    prd_key VARCHAR(100),
    prd_nm VARCHAR(255),
    prd_cost INT,
    prd_line CHAR(1),
    prd_start_dt DATE,
    prd_end_dt DATE,
    dwh_create_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- ============================================================
-- CRM SALES DETAILS
-- Stores sales transaction data received from CRM source.
-- ============================================================
CREATE TABLE IF NOT EXISTS crm_sales_details (
    sls_ord_num VARCHAR(50),
    sls_prd_key VARCHAR(50),
    sls_cust_id INT,
    sls_order_dt INT,
    sls_ship_dt INT,
    sls_due_dt INT,
    sls_sales INT,
    sls_quantity INT,
    sls_price INT,
    dwh_create_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS erp_loc_a101 (
    cid VARCHAR(50),
    cntry VARCHAR(50),
    dwh_create_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS erp_cust_az12 (
    cid VARCHAR(50),
    bdate DATE,
    gen VARCHAR(50),
    dwh_create_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS erp_px_cat_g1v2 (
    id VARCHAR(50),
    cat VARCHAR(50),
    subcat VARCHAR(50),
    maintenance VARCHAR(50),
    dwh_create_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

SHOW TABLES;


