##start gcloud:
gcloud init

##upload file: https://cloud.google.com/storage/docs/gsutil/commands/cp
gsutil cp -r 2021-10-10  gs://blankspace89783/2021-10-10
gsutil cp -r 2021-10-11  gs://blankspace89783/2021-10-11

##from gcs to big query: https://cloud.google.com/bigquery/docs/reference/bq-cli-reference#bq_load
##2021-10-10
bq load --skip_leading_rows=1 --source_format=CSV data20211010.inventory1 gs://blankspace89783/2021-10-10/2021-10-10-inventory.csv Store_ID:INTEGER,Product_ID:INTEGER,Stock_On_Hand:STRING 
bq load --skip_leading_rows=1 --source_format=CSV data20211010.products1 gs://blankspace89783/2021-10-10/2021-10-10-products.csv Product_ID:INTEGER,Product_Name:STRING,Product_Category:STRING,Product_Cost:STRING,Product_Price:STRING 
bq load --skip_leading_rows=1 --source_format=CSV data20211010.sales1 gs://blankspace89783/2021-10-10/2021-10-10-sales.csv Sale_ID:INTEGER,Date:STRING,Store_ID:INTEGER,Product_ID:INTEGER,Units:STRING
bq load --skip_leading_rows=1 --source_format=CSV data20211010.stores1 gs://blankspace89783/2021-10-10/2021-10-10-stores.csv Store_ID:INTEGER,Store_Name:STRING,Store_City:STRING,Store_Location:STRING,Store_Open_Date:STRING

##2021-10-11
bq load --skip_leading_rows=1 --source_format=CSV data20211011.inventory2 gs://blankspace89783/2021-10-11/2021-10-11-inventory.csv Store_ID:INTEGER,Product_ID:INTEGER,Stock_On_Hand:STRING 
bq load --skip_leading_rows=1 --source_format=CSV data20211011.products2 gs://blankspace89783/2021-10-11/2021-10-11-products.csv Product_ID:INTEGER,Product_Name:STRING,Product_Category:STRING,Product_Cost:STRING,Product_Price:STRING 
bq load --skip_leading_rows=1 --source_format=CSV data20211011.sales2 gs://blankspace89783/2021-10-11/2021-10-11-sales.csv Sale_ID:INTEGER,Date:STRING,Store_ID:INTEGER,Product_ID:INTEGER,Units:STRING
bq load --skip_leading_rows=1 --source_format=CSV data20211011.stores2 gs://blankspace89783/2021-10-11/2021-10-11-stores.csv Store_ID:INTEGER,Store_Name:STRING,Store_City:STRING,Store_Location:STRING,Store_Open_Date:STRING