/*DDL Scripts create Bronze Tables*/
IF OBJECT_ID('bronze.acc_info', 'U') IS NOT NULL
	DROP TABLE bronze.acc_info;
CREATE TABLE bronze.acc_info(
	acc_nm NVARCHAR(50),
	acc_sect NVARCHAR(50),
	acc_yr_est SMALLINT,
	acc_rev DECIMAL(7,2),
	acc_empys INT,
	acc_loc NVARCHAR(50),
	acc_subs_of NVARCHAR(50)
);

IF OBJECT_ID('bronze.sales_details', 'U') IS NOT NULL
	DROP TABLE bronze.sales_details;
CREATE TABLE bronze.sales_details(
	opportunity_id NVARCHAR(10),
	sales_agent NVARCHAR(50),
	product NVARCHAR(50),
	account NVARCHAR(50),
	deal_stage NVARCHAR(50),
	engage_date DATE,
	close_date DATE,
	close_value DATE
);

IF OBJECT_ID('bronze.prd_info', 'U') IS NOT NULL
	DROP TABLE bronze.prd_info;
CREATE TABLE bronze.prd_info(
	prd_nm NVARCHAR(50),
	prd_srs NVARCHAR(50),
	prd_sls_prc  DECIMAL(7,2)
);

IF OBJECT_ID('bronze.agt_info', 'U') IS NOT NULL
	DROP TABLE bronze.agt_info;
CREATE TABLE bronze.agt_info(
	agt_nm NVARCHAR(50),
	agt_mngr NVARCHAR(50),
	agt_reg_offc  NVARCHAR(50)
);
