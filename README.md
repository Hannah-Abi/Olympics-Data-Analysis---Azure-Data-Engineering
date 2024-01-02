## Olympics-Data-Analysis-Azure-Data-Engineering-Project
### Overview
- This project is to anslyse Olympics Data using a variety of Azure resources, including including Azure Data Factory, Data Lake Gen 2, Synapse Analytics, and Azure Databricks.
### Learning Objectives 
- This project serves as a learning opprtunity for common data engineering practices, focusing on ETL pipelines techniques. The skills sharpened here are availables for small to medium-sized businesses aiming to migrate their local data to the cloud. 
### The tools that are covered in this project:
1. **Azure Data Factory(ADF)** - to ingest the dataset over HTTP
2. **Azure Data Lake Storage Gen2** - to the data
3. **Azure Databricks** - to transform the RAW data to the most cleanest form of data
4. **Azure Synapse Analytics** - to load the clean data
5. **Microsoft Power BI** - build an interactive dashboard. 
### Complete Project Execution 
#### Step 1: Data Ingestion using ADF
- **Build a pipeline:** A pipeline orchestrates the movement and transformation of data; then add a Copy Data activity to the pipeline.
- **Configure Source Dataset:** In the Copy Data activity, configure the source dataset to point to the HTTP server. Specify the HTTP linked service (URL).
- **Configure Destination Dataset:** Configure the destination dataset to point to the raw data folder in the Azure Data Lake Storage Gen 2. 
- **Debug and Validate:** Test the pipeline by running it in debug mode. Validate that data is ingested from the HTTP server successfully.
![Data Ingestion](https://raw.github.com/Hannah-Abi/Olympics-Data-Analysis---Azure-Data-Engineering/blob/main/images/data-ingestion.png)
