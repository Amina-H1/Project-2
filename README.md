![](header%20image.PNG)
## Group "Go Data Way" (Project 2: Extract, Transform, Load)
## Coronavirus (COVID-19) Daily Update Database

### Abstract
The objective of this project is to create a unified data repository/centralised database from multiple sources using the ETL process. In the case of our project we will be utilising 'COVID-19 Daily Update' datasets from the `Greater London Authority` to create our database. 
The data can be found here: https://data.london.gov.uk/dataset/coronavirus--covid-19--cases.

The `ETL` process involves Extracting (E) the `.csv` files, Transforming (T) the data into a format which we can merge the files, and then finally Lodaing (L) the files into a small data warehouse using `MySQL workbench`.

#### Research Questions
1. Which Borough has the highest death count?
2. Which borough has the highest vaccine rate?

#### **1. Extract**
The extraction process was automated using `Splinter`. This enabled us to identify the relevant data and extract it automatically. Two sources of data were identified from the Coronavirus (COVID-19) Daily Update available on the Greater London Authority (GLA) Datastore website (See reference list below). There were two up-to-date `CSV files` available which outlined the number of Covid-19 deaths by borough and the number of vaccine uptake sorted by age-band and borough  

The `splinter` was imported onto `Jupyter notebook` and the browser was accessed through this method. By entering the `URL` for the Datastore website, the automated splinter was able to extract the two data sources in the CSV file format: [borough_deaths](https://github.com/Amina-H1/Project-2/blob/main/Resources/phe_deaths_london_boroughs.csv) and [borough_vaccines](https://github.com/Amina-H1/Project-2/blob/main/Resources/phe_vaccines_age_london_boroughs.csv).










#### **2. Tranform**






#### **3. Load**
In this step of the ETL process, the incoming data will be loaded into the target database using MySQL. 
First using `postgreSQL` we created a data warehouse using the `queries.sql`; which created a warehouse containing the following tables `borough_deaths` and `borough_vaccines`. Once the warehouse was established, the tables can begin to be populated with the data we need using `SQLAlchemy`. This was done by importing `sqlalchemy` and utilising it to push the data to the database using an engine connection and `.to_sql` function. Then finally to check the loading has been complete, queries were run to conduct a small analysis using our data within the warehouse.

The findings showed that:
1. Croydon has the highest death count recorded in London from COVID-19.
2. Indivduals between the ages of 25-29 years; living in Wandsworth, have the highest number of doses of the Vaccine taken in London.



### References:

Greater London Authority (GLA) (2022), Coronavirus (COVID-19) Daily Update (https://data.london.gov.uk/dataset/coronavirus--covid-19--cases)

