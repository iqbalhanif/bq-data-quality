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
4. Detail are in \

## Using Great Expecation
1. Adding New Datasource
   · Start the GE (
   · airflow scheduler <br />
   · airflow webserver -p 8080 <br />
   
2. Create Expectation

3. Create Checkpoint

4. Creae Doccumentation

source: https://towardsdatascience.com/great-expectations-always-know-what-to-expect-from-your-data-51214866c24 
