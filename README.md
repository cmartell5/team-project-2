# Project-2

## Team Members
Tongchen He, Christy Martell, Richard Wang, Leyang Zang

## Summary
In this project, we’ll use the U.S. Household Income data set from kaggle.com to get income by city, and compare with the number of fast food restaurants in the corresponding city using the dataset from kaggle.com called Explore American Fast Food Restaurants Data. We want to see if there is a correlation between the number of fast food restaurants and average household incomes for each city.

## Data extracted from Kaggle as csv files: 
- Income - https://www.kaggle.com/datasets/goldenoakresearch/us-household-income-stats-geo-locations 
- Fast Food Restaurants - https://www.kaggle.com/code/agilesifaka/explore-american-fast-food-restaurants-data/data?select=FastFoodRestaurants.csv

## Used PostgreSQL and Python in Jupyter Notebook

## Data Transformations
We downloaded our data in csv files to transform the data. The steps we took are:
- Filtered all cities to only use those in the United States
- Only used the relevant columns needed for the project
- Renamed some of the columns to be more user friendly
- Made sure column titles were all in Title Case format
- Performed an Inner Join with the two sources of data on "city"

## Project Assignments
- Jupyter Notebook - Tongchen He
- Transformations - decided as group, executed by Tongchen He and Leyang Zhang
- SQL Queries/Schema - Leyang Zhang/Thongchen He
- Project Mapping - Christy Martell
- README file - Christy Martell/Richard Wang
- Presentation - Richard Wang

## Findings
1. We found that once we joined the data into one table and made all the transformations, the dataset we obtained from Kaggle.com about what fast food restaurants were in each city was not complete. Therefore, it was not accurate. We know this because it only showed about 1-5 restaurants per city. For example, it only showed one fast-food place in Agoura Hills and Manhattan Beach, California. We know that is not true. We did find some data that could have been more accurate; however, it cost a lot of money.

2. We were not able to make the correlation we were hoping to because of the incomplete data. Based off the dataset we did use, we decided to do a query on our final data table to see which state has the most fast-food restaurants. We found that California has the most fast-food restaurants. 
