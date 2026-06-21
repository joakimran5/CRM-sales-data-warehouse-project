/*DDL Scripts create Bronze Tables*/
IF OBJECT_ID('silver.acc_info', 'U') IS NOT NULL
	DROP TABLE silver.acc_info;
CREATE TABLE silver.acc_info(
	acc_key INT PRIMARY KEY IDENTITY(1,1),
	acc_nm NVARCHAR(50),
	acc_sect NVARCHAR(50),
	acc_yr_est SMALLINT,
	acc_rev decimal(10,2),
	acc_empys INT,
	acc_loc NVARCHAR(50),
	acc_subs_of NVARCHAR(50)
);

IF OBJECT_ID('silver.prd_info', 'U') IS NOT NULL
	DROP TABLE silver.prd_info;
CREATE TABLE silver.prd_info(
	prd_key INT PRIMARY KEY IDENTITY(1,1),
	prd_nm NVARCHAR(50),
	prd_srs NVARCHAR(50),
	prd_sls_prc  decimal(10,2)
);

IF OBJECT_ID('silver.agt_info', 'U') IS NOT NULL
	DROP TABLE silver.agt_info;
CREATE TABLE silver.agt_info(
	agt_key INT PRIMARY KEY IDENTITY(1,1),
	agt_nm NVARCHAR(50),
	agt_mngr NVARCHAR(50),
	agt_reg_offc  NVARCHAR(50)
);

IF OBJECT_ID('silver.sales_details', 'U') IS NOT NULL
	DROP TABLE silver.sales_details;
CREATE TABLE silver.sales_details(
	opportunity_id NVARCHAR(10) PRIMARY KEY,
	sales_agent NVARCHAR(50),
	product NVARCHAR(50),
	account NVARCHAR(50),
	deal_stage NVARCHAR(50),
	engage_date DATE,
	close_date DATE,
	close_value DECIMAL(10,2)
);
