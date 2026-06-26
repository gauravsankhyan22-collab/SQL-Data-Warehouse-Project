/*
===============================================================================
DDL Script : Create Bronze Tables 
===============================================================================
Script Purpose :
   This script creates tables in the 'bronze' schema , dropping existing tables
   if they already exists.
   Run this script to re-define the DDL structure of 'bronze' Tables.
===============================================================================
*/

IF OBJECT_ID('bronze.crm_cust_info' ,'U') IS NOT NULL
  DROP TABLE bronze.crm_cust_info;
GO

CREATE TABLE bronze.crm_cust_info (
    cst_id              INT,
    cst_key             VARCHAR(50),
    cst_firstname       VARCHAR(50),
    cst_lastname        VARCHAR(50),
    cst_marital_status  VARCHAR(50),
    cst_gndr            VARCHAR(50),
    cst_create_date     DATE,
  );

GO
IF OBJECT_ID('bronze.crm_sales_details' ,'U') IS NOT NULL
  DROP TABLE bronze.crm_sales_details;
GO
  
CREATE TABLE bronze.crm_sales_details(
  	sls_ord_num VARCHAR(20),
  	sls_prd_key VARCHAR (30),
  	sls_cust_id INT,
  	sls_order_dt INT,
  	sls_ship_dt INT,
  	sls_due_dt INT,
  	sls_sales INT,
  	sls_quantity INT,
  	sls_price INT
);

GO
IF OBJECT_ID('bronze.crm_prd_info' ,'U') IS NOT NULL
  DROP TABLE bronze.crm_prd_info;
GO
  
CREATE TABLE bronze.crm_prd_info(
  	prd_id INT,
  	prd_key VARCHAR (30),
  	prd_nm VARCHAR(100),
  	prd_cost DECIMAL (10,2),
  	prd_line VARCHAR (5),
  	prd_start_dt DATE,
  	prd_end_dt DATE null
);

GO
IF OBJECT_ID('bronze.erp_cust_az12' ,'U') IS NOT NULL
  DROP TABLE bronze.erp_cust_az12;
GO
  
CREATE TABLE bronze.erp_cust_az12(
CID VARCHAR(20),
BDATE DATE,
GEN VARCHAR(10)
);

GO
IF OBJECT_ID('bronze.erp_loc_a101' ,'U') IS NOT NULL
  DROP TABLE bronze.erp_loc_a101;
GO

CREATE TABLE bronze.erp_loc_a101(
CID VARCHAR (30),
CNTRY VARCHAR (50)
);

GO
IF OBJECT_ID('bronze.erp_px_cat_g1v2' ,'U') IS NOT NULL
  DROP TABLE bronze.erp_px_cat_g1v2;
GO

CREATE TABLE bronze.erp_px_cat_g1v2(
ID VARCHAR (15),
CAT VARCHAR (50),
SUBCAT VARCHAR (50),
MAINTENANCE VARCHAR (10)
);



  
