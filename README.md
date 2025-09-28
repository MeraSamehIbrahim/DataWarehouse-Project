# Data Warehouse Project - Medallion Architecture

A comprehensive data warehouse implementation using the medallion (bronze-silver-gold) architecture for integrating CRM and ERP systems.

##  Project Overview

This project implements a modern data warehouse solution that:
- Integrates data from multiple sources (CRM & ERP systems)
- Follows the medallion architecture pattern
- Provides clean, transformed data for analytics and reporting

##  Architecture

### Bronze Layer (Raw Data)
- **Purpose**: Raw data ingestion from source systems
- **Sources**: CRM system (customer info, sales, products) + ERP system (location, customer details, product categories)
- **Format**: Direct copies of source data

### Silver Layer (Cleaned & Validated)
- **Purpose**: Data cleaning, deduplication, and standardization
- **Transformations**:
  - Data type conversions
  - Null value handling
  - Deduplication
  - Standardization of values
  - Data quality checks

### Gold Layer (Business Ready)
- **Purpose**: Business-friendly dimensional models
- **Models**:
  - `dim_customers` - Customer dimension with enriched attributes
  - `dim_products` - Product dimension with category hierarchy
  - `fact_sales` - Sales fact table with conformed dimensions

##  File Structure


### Bronze Layer (Raw Data)
- **Purpose**: Raw data ingestion from source systems
- **Sources**: CRM system (customer info, sales, products) + ERP system (location, customer details, product categories)
- **Format**: Direct copies of source data

### Silver Layer (Cleaned & Validated)
- **Purpose**: Data cleaning, deduplication, and standardization
- **Transformations**:
  - Data type conversions
  - Null value handling
  - Deduplication
  - Standardization of values
  - Data quality checks

### Gold Layer (Business Ready)
- **Purpose**: Business-friendly dimensional models
- **Models**:
  - `dim_customers` - Customer dimension with enriched attributes
  - `dim_products` - Product dimension with category hierarchy
  - `fact_sales` - Sales fact table with conformed dimensions

##  File Structure
DataWarehouse-Project/
├── README.md
├── 01-bronze-layer/
│ └── bronze-layer-creation.sql
├── 02-silver-layer/
│ └── silver-layer-cleaning.sql
├── 03-gold-layer/
│ └── gold-layer-views.sql
├── 04-testing/
│ └── testing-queries.sql
└── docs/
└── project-overview.md


##  Technologies Used

- **Database**: Microsoft SQL Server
- **Architecture**: Medallion (Bronze-Silver-Gold)
- **Data Integration**: BULK INSERT for data loading
- **Data Modeling**: Dimensional modeling (Star Schema)

##  Data Sources

### CRM System
- `crm_cust_info` - Customer master data
- `crm_prd_info` - Product information
- `crm_sales_details` - Sales transactions

### ERP System
- `erp_loc_a101` - Customer location data
- `erp_cust_az12` - Additional customer attributes
- `erp_px_cat_g1v2` - Product categorization

##  Getting Started

### Prerequisites
- SQL Server Management Studio (SSMS)
- Sample dataset files (CSV format)

### Installation Steps
1. Create the database: `CREATE DATABASE DataWarehouse;`
2. Execute scripts in order:
   - Bronze layer first
   - Silver layer second
   - Gold layer third
3. Run testing queries to validate results

##  Sample Analytics

The project includes ready-to-use analytical queries:
- Total sales by country and product category
- Sales analysis by gender and product line
- Top-selling products performance

##  Key Features

- **Data Quality**: Comprehensive cleaning and validation
- **Slowly Changing Dimensions**: Product versioning support
- **Data Integration**: CRM + ERP system unification
- **Ready for BI**: Optimized for reporting tools

##  License

This project is for educational/portfolio purposes.