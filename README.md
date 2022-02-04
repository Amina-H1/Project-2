![](header%20image.PNG)
## Group "Go Data Way" (Project 2: Extract, Transform, Load)
### Coronavirus (COVID-19) Daily Update Database

## Abstract
The objective of this project is to create a unified data repository/centralised database from multiple sources using the ETL process. In the case oof our project we will be utilising 'COVID-19 Daily Update' datasets from the 'Greater London Authority' to create our database. 
The data can be found here: https://data.london.gov.uk/dataset/coronavirus--covid-19--cases
The process involves Extracting (E) the '.csv' files, Transforming (T) the data into a format which we can merge the files, and then finally Lodaing (L) the files into a small data warehouse using MySQL workbench.

### Research Questions
* Which Borough has the highest death count?
* Which borough has the highest vaccine rate?

### **1. Extract**







### **2. Tranform**






### **3. Load**
In this step of the ETL process, the incoming data will be loaded into the target database using MySQL. 
First using ‘postgreSQL’ we created a data warehouse using the ‘queries.sql’; which created a warehouse containing the following tables ‘borough_deaths’ and ‘borough_vaccines’. Once the warehouse was established, the tables can begin to be populated with the data we need using SQLAlchemy. This was done by importing ‘sqlalchemy’ and utilising it to push the data to the database using an engine connection and '.to_sql' function. Then finally to check the loadiung has been complete, queries were run to conduct a small analysis using our data within the warehouse.

