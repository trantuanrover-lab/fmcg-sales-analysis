BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Customer_Type" (
	"CustomerType_ID"	INTEGER,
	"Customer_Type"	TEXT
);
CREATE TABLE IF NOT EXISTS "FactSales" (
	"Order_ID"	TEXT,
	"Order_Date"	TEXT,
	"Geo_ID"	INTEGER,
	"SKU"	TEXT,
	"SalesPerson_ID"	INTEGER,
	"CustomerType_ID"	INTEGER,
	"Channel_ID"	INTEGER,
	"Promotion_ID"	INTEGER,
	"Units_Sold"	INTEGER,
	"Unit_Price_USD"	REAL,
	"Discount_Pct"	REAL,
	"Gross_Sales_USD"	REAL,
	"Marketing_Spend_USD"	REAL,
	"COGS_USD"	REAL,
	"Logistics_Cost_USD"	REAL,
	"Net_Revenue_USD"	TEXT,
	"Profit_USD"	REAL,
	"Profit_Margin_Pct"	TEXT
);
CREATE TABLE IF NOT EXISTS "Fact_Sales_Merged" (
	"Order_ID"	TEXT,
	"Order_Date"	TEXT,
	"Geo_ID"	REAL,
	"SKU"	TEXT,
	"SalesPerson_ID"	REAL,
	"CustomerType_ID"	REAL,
	"Channel_ID"	REAL,
	"Promotion_ID"	REAL,
	"Units_Sold"	REAL,
	"Unit_Price_USD"	REAL,
	"Discount_Pct"	REAL,
	"Gross_Sales_USD"	REAL,
	"Marketing_Spend_USD"	REAL,
	"COGS_USD"	REAL,
	"Logistics_Cost_USD"	REAL,
	"Net_Revenue_USD"	REAL,
	"Profit_USD"	REAL,
	"Profit_Margin_Pct"	REAL,
	"Order_Date_Cleaned"	TIMESTAMP,
	"Customer_Type"	TEXT,
	"Product_Category"	TEXT,
	"Brand"	TEXT,
	"Product_Name"	TEXT,
	"Promotion_Type"	TEXT,
	"Region"	TEXT,
	"Country"	TEXT,
	"City"	TEXT,
	"Sales_Channel"	TEXT,
	"Sales_Person"	TEXT,
	"Estimated_Unit_Price"	REAL
);
CREATE TABLE IF NOT EXISTS "Product_Type" (
	"SKU"	TEXT,
	"Product_Category"	TEXT,
	"Brand"	TEXT,
	"Product_Name"	TEXT
);
CREATE TABLE IF NOT EXISTS "Promotion_Type" (
	"Promotion_ID"	INTEGER,
	"Promotion_Type"	TEXT
);
CREATE TABLE IF NOT EXISTS "Region" (
	"Geo_ID"	INTEGER,
	"Region"	TEXT,
	"Country"	TEXT,
	"City"	TEXT
);
CREATE TABLE IF NOT EXISTS "Sales_Channel" (
	"Channel_ID"	INTEGER,
	"Sales_Channel"	TEXT
);
CREATE TABLE IF NOT EXISTS "Sales_Person" (
	"SalesPerson_ID"	INTEGER,
	"Sales_Person"	TEXT
);
COMMIT;
