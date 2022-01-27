# NYPD_Analysis

## Resources 

### NYC Open Data Dataset 
https://data.cityofnewyork.us/Public-Safety/NYPD-Complaint-Data-Current-Year-To-Date-/5uac-w243 

### Google Slides Presentation
https://docs.google.com/presentation/d/1ap0BqMae3k6C__HZCTE_iIljeR_qzX0vpkj57T-e4C8/edit?usp=sharing

### Tableau Dashboard 
https://public.tableau.com/views/NYPDCrimeAnalysis_16420473832580/2021NYPDComplaintDatabase_1?:language=en-US&:display_count=n&:origin=viz_share_link

## Introduction

The NYC Open Data Dataset includes all crimes reported to the New York City Police Department (NYPD) within multiple boroughs in NYC. The Goal of the project is to predict whether or not a crime would be classified as "violent" depending on the different factors associated with the registered complaint. 

## Objective

The main objective of this analysis to is to explore NYPD Complaint data provided from NYC Open Data using a Random Forest Classification logistic regression model. This analysis is inspired by increased focused on policing in the United States over the past year. We hope to make unbiased observations on crime trends using the developed model.

NYC Open Data is an open source for all types of data related to New York City. The data set we will be working with is a collection of all felony, misdemeanor, and violation crimes reported to the New York City Police Department.

Specifically, the analysis will examine crime descriptions, times, locations, etc. to create a binary classification model that will predict whether or not the type of crime committed is likely to be a violent crime. Furthermore, this will be supplemented by Tableau location heat maps to show high crime areas per crime type. Time permitting and given the expanse of the data available, we can see if crime rates change over months/years.

## Team

- Dom Avanzi
- Zach Zydonik 
- Mary Kate Shea
- Jason Yoo

## Dataset
The data used contains 36 columns and spans over 324 thousand rows. Of the 36 columns, this analysis will be looking at the followin:
* Police precinct
* Borough location
* Offense occurence time
* Offense classification code
* Offense description
* Offense Latitude & Longitude

Using the above columns of the dataset will allow the creation of a location map via tableau to pinpoint times and locations of various offenses.
Additionally, the dataset also shows age, race, and ethnicity of the suspects and victims. These descriptors can also be used to draw futher conclusions on the overall crime statistics within New York City.


## Creating the Database (Postgres)
The dataset was cleaned via pandas and uploaded directly to a SQL database via Postgres. The following code uploaded the target and features necessary for the random forest classification model:

```
from sqlalchemy import create_engine
from config import db_password
db_string = f"postgresql://postgres:{db_password}@127.0.0.1:5432/NYPD_Complaints"
engine = create_engine(db_string)
Target.to_sql(name='Target', con=engine)
Features.to_sql(name='Features', con=engine)
```

## Basic Descriptors
Crime by borough looks like this:

<img src = "./Resources/crime_by_borough.png"  width="480" height="400"> 

Example of crime in just the Bronx borough:

<img src = "./Resources/bronx_crimes.png" width="480" height="480">

## Tableau Dashboard

The dashboard link can be found [here](https://public.tableau.com/views/NYPDCrimeAnalysis_16420473832580/2021NYPDComplaintDatabase_1?:language=en-US&:display_count=n&:origin=viz_share_link)

The Dashoboard allows users to select the following filters to narrow down complaints and crimes for the year of 2021:
* Type of Complaint (Violent vs Non-Violent)
* Borough Location
* Month of Complaint
* Offense Description

<img src = "./Resources/dashboard_screenshot.png" width="720" height="480">

## Random Forest Predictive Model

The following results of the balanced random forest predive model describe the model's ability to predict if a reported crime will be violent or non-violent.

Accuracy Score: 75%
 
Below is the resulant confusion matrix. As can be seen in the matrix, there are 8097 actual violent crimes that were predicted as such and 5002 that were incorrectly predicted as nonviolent. Depending on the required specificity of the model, this shows the recall of the model may need to be improved.
![image_name](Resources/Confusion_Matrix.png)

The following chart shows the influence of each variable on the resulting predictive model. As can be seen in the chart, the category of the drime (felony, midemeaner, etc) has the largest influence on the model. It may be argued that this variable should be dropped since this cannot be predicted before the crime happens. This may be considered for future analysis. 
![image_name](Resources/Variable_influence.png) 
