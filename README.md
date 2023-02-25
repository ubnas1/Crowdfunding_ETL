# Crowdfunding_ETL

In this project I have used ETL practises to extract and transform the data and create new database.

## Extract

I used pd.read_excel() function to extract the data from the excel file and to make a Pandas dataframe.

## Transform

As next step, I split the Category and sub category column to seperate the two categories into 2 seperate columns.

I changed some column names, dropped some columns, changed data types of some columns and also added the cat name to each category.

## Load

After finishing the Transformation of data, I created 4 .csv files 

## Database Creation

Creating the DBD diagram is the first step of designing a new database.

I created a new DBD diagram by using my CSV files as reference.

As last step, I wrote the code in PgAdmin to create a new Database using my DBD as a reference.
