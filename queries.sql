CREATE TABLE "income" (
    "Income_Median" int   NOT NULL,
    "Income_meanv" int   NOT NULL,
    "State" varchar(2)   NOT NULL,
    "City" varchar(100)   NOT NULL,
    CONSTRAINT "pk_income" PRIMARY KEY (
        "City","State")
);
	
CREATE TABLE "fast_food" (
    "Address" varchar(100)   NOT NULL,
    "Categories" varchar(100)   NOT NULL,
    "State" varchar(2)   NOT NULL,
    "City" varchar(100)   NOT NULL,
    "Name" varchar(100)   NOT NULL,
    "Zip_code" varchar(20)   NOT NULL,
    CONSTRAINT "pk_fast_food" PRIMARY KEY (
        "Address"
     )
);


SELECT *
FROM fast_food

SELECT DISTINCT ("City", "State")
FROM income

CREATE VIEW income_fastfood AS
SELECT "Address", f."City", f."State", "Zip_Code", "Name", "Income_Mean", "Income_Median"
FROM fast_food f
Inner Join income i
ON f."City" = i."City" AND f."State" = i."State"

-- Is income related to the number of fastfood restaurants?
Select count("Address") As "Number_of_Restaurants", "City", "State", 
avg("Income_Mean") AS "Income_Mean", min("Income_Median") AS "Income_Median"
From income_fastfood
group by ("City", "State")
ORDER BY "Income_Mean" DESC

-- Which state has the most fastfood restaurants?
Select count("Address") As "Number_of_Restaurants", "State"
From income_fastfood
group by "State"
ORDER BY 1 DESC



