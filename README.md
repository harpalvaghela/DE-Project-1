## Project 1 – Data Pipeline for Customer Account Analysis
🎯 Objective
Build a robust Azure Data Factory (ADF) pipeline to process customer account data.

Ingest data from backend storage ➔ transform and clean ➔ load into Azure SQL Database.

Support downstream analytics and reporting needs with scalable and efficient processing.

🎯 Project Steps

➡️ Step 1: Data Ingestion (Backend ➔ Raw/Bronze Layer)

- Source: Local File System
- accounts.csv, customers.csv, loan_payments.csv, loans.csv, transactions.csv
- Sink: Azure Data Lake Storage (ADLS) Raw (Bronze) container
- Reference Dataset: AI Bank Dataset on Kaggle (https://www.kaggle.com/datasets/varunkumari/ai-bank-dataset)

➡️ Step 2: Data Cleansing (Bronze ➔ Silver Layer)

- Use ADF Dataflows:
- Read data from Bronze layer.
- Remove duplicates, handle missing values.
- Apply necessary schema and data type transformations.
- Output as Parquet/Delta files.

➡️ Step 3: Data Transformation (Silver ➔ Gold Layer)

- Implement SCD Type 1 & Type 2 logic via Dataflows.
- Load processed data into Azure SQL Database.

➡️ Pipelines:

- Local ➔ Bronze
- Bronze ➔ Silver
- Silver ➔ Gold

➡️ Step 4: Data Visualization (Power BI)

- Connect Power BI to SQL database tables.
- Create dashboards and publish reports to Microsoft Fabric Workspace.

➡️ Key Features

- Dynamic Parameters for flexible pipelines.
- Secure Secrets Management with Azure Key Vault.
- Scheduled Pipelines with Triggers.
- Scalable and Modular Design.

➡️ Technologies Used

- Azure Data Factory
- Azure Data Lake Storage Gen2
- Azure SQL Database
- Azure Key Vault
- Power BI

-------------------------------------------------------
Connect with me on my profile below for more updates:
 
LinkedIn: https://www.linkedin.com/in/harpalvaghela/

Medium Blog: https://medium.com/@harpalvaghela

Thank you
