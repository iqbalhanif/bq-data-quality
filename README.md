# Data Quality Checking with Great Expectatin (Big Query)

This is data quality checking script by using Great Expextation.

## Tools:
1. Google Cloud Platform (GCP) including: <br />
  · GCP Bucket/Cloud Storage <br />
  · GCP BigQuery <br />
2. Great Expectation
4. Python
5. Terminal/Shell


## Dataset:
1. 2021-10-10 dataset (training dataset) consist of: sales, stores, products, inventory
2. 2021-10-11 dataset (testing dataset) consist of: sales, stores, products, inventory

## Install Google SDK
1. Download Cloud SDK installer
2. Launch the installer
3. Then you can use 'gcloud init' in your terminal 
4. Config your gcp authorization (GOOGLE_APPLICATION_CREDENTIALS) and configuration

source: https://cloud.google.com/sdk/docs/install

## Install Great Expectation
1. Clone ge_tutorial repository (git clone https://github.com/superconductive/ge_tutorials)
2. Install Great Expectation/GE (pip install great_expectations)
3. You also can upgrade GE version using pip command

source: https://docs.greatexpectations.io/docs/

## Upload Data from local to Big Query Table
1. Use 'gsutil' command to copy your data from local to GCS/bucket
2. Create Dataset on your Big Query
3. Usw 'bq load' command to load your data from GCS to Big Query table
4. Details are in \script directory

## Using Great Expecation
1. Adding New Datasource
   · Start the GE using --v3-api (great_expectations --v3-api init) <br />
   · Add new datasource (great_expectations --v3-api datasource new) <br />
   · Choose your data source type <br />
   · A jupyter notebook will appear, then setting your fata source connection by using the notebook <br />
   · The data source connection will be saved if you follow the procedure written on the notebook, after that you can close the notbeek <br />
   · You can see greeat_expectation.yml to check whether the data source is saved or not.  
  
2. Create Expectation
   · Create new expectation (great_expectations --v3-api suite new) <br />
   · Choose using interactive batch data option (number 2) and select the data source <br />
   · A jupyter notebook will appear, then follow the instruction to create expectation (consist of validator.expect_table... and validator.expect_column...) <br />
   · The expectation will be saved if you follow the procedure written on the notebook, after that you can close the notbeek <br />
   · You can see expectation folder to check whether the expectation is saved or not.  
   
   
3. Create Checkpoint

4. Creae Doccumentation

source: https://towardsdatascience.com/great-expectations-always-know-what-to-expect-from-your-data-51214866c24 
