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

## Using Great Expectation
1. Adding New Datasource
   · Start the GE using --v3-api (great_expectations --v3-api init) <br />
   · Add new datasource (great_expectations --v3-api datasource new) <br />
   · Choose your data source type <br />
   · A jupyter notebook will appear, then setting your fata source connection by using the notebook <br />
   · The data source connection will be saved if you follow the procedure written on the notebook, after that you can close the notbeek <br />
   · You can see greeat_expectation.yml to check whether the data source is saved or not.  
  
2. Create Expectation
   · Create new expectation (great_expectations --v3-api suite new). <br />
   · Choose using interactive batch data option (number 2) and select the data source. <br />
   · A jupyter notebook will appear, then follow the instruction to create expectation (consist of validator.expect_table... and validator.expect_column...). <br />
   · The expectation will be saved if you follow the procedure written on the notebook, after that you can close the notebook. <br />
   · You can see expectation folder to check whether the expectation is saved or not (ls great_expectations/expectations). <br />  
   · You can also edit your existing expectation (great_expectations --v3-api suite edit expectation_name).

![image](https://user-images.githubusercontent.com/18484807/142793554-67e87363-b250-4759-8f73-6166cc8f448a.png)


3. Create Checkpoint
   · Create new checkpoint (great_expectations --v3-api checkpoint new checkpoint_name). <br />
   · A jupyter notebook will appear, then follow the instruction to create checkpoint (choose the correct data source & dataset/tabble name). <br />
   · The checkpoint will be saved if you follow the procedure written on the notebook, after that you can close the notebook. <br />
   · You can see checkpoint folder to check whether the checkpoiny is saved or not (ls great_expectations/checkpoints). <br />
   · For using the checkpoint you can write: great_expectations --v3-api checkpoint run checkpoint_name

![image](https://user-images.githubusercontent.com/18484807/142793601-b8bd41b5-6f58-427a-8da6-860eded93b78.png)

4. Creae Doccumentation
   · Create new documentation (great_expectations --v3-api docs build --site-name local_site). <br />
   · The document will be saved locally and appear automatically through yout browser. (consist of all validation process using your expectation and checkpoint).
   
![image](https://user-images.githubusercontent.com/18484807/142793628-ea960bdc-6d53-4384-b89d-4569957bbbd2.png)

source: https://towardsdatascience.com/great-expectations-always-know-what-to-expect-from-your-data-51214866c24 
