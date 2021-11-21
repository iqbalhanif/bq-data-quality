##https://legacy.docs.greatexpectations.io/en/latest/guides/how_to_guides/configuring_datasources/how_to_configure_a_bigquery_datasource.html
##https://docs.greatexpectations.io/docs/guides/connecting_to_your_data/database/bigquery/

##start great expectation & add datasource:  
great_expectations --v3-api init
great_expectations --v3-api datasource new

##check datasource
cat great_expectation.yml

##create expectation (via jupyter notebook)
great_expectations --v3-api suite new

##edit expectation (via jupyter notebook)
great_expectations --v3-api suite edit ##expectation_name

##check created expectations
ls great_expectations/expectations

##create checkpoint
great_expectations --v3-api checkpoint new ##checkpoint_name

##run checkpoint
great_expectations --v3-api checkpoint run ##checkpoint_name

##check created checkpoints
ls great_expectations/checkpoints

##create documentation
great_expectations --v3-api docs build --site-name local_site

##check created notebook (for all step)
ls great_expectations/uncommitted