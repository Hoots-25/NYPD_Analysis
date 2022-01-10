# NYPD_Analysis

## Resources

- NYC Open Data Dataset: https://data.cityofnewyork.us/Public-Safety/NYPD-Complaint-Data-Current-Year-To-Date-/5uac-w243 

## Introduction

The NYC Open Data Dataset includes all crimes reported to the New York City Police Department (NYPD) within multiple boroughs in NYC. The Goal of the project is to predict the frequency or the level of offense depending on different factors associated with the registered complaint and to analyze the factors in the dataset and eventually leading to the crime trend. 

## Objective

The main objective of this analysis to is to explore NYPD Complaint data provided from NYC Open Data using a the Random Forest classification logistic regression model. This analysis is insired by increased focused on policing in the United States over the past year. We hope to make unbiased observations on crime trends using the developed model.

NYC Open Data is an open source for all types of data related to New York City. The data set we will be working with is a collection of all felony, misdemeanor, and violation crimes reported to the New York City Police Department.

Specifically, the analysis will examine crime descriptions, times, locations, etc. to create a model that will predict the type of crime most likely to occur. Furthermore, this will be supplemented by a tableau heat map to show areas with high crime rate. Time permitting and given the expanse of the data available, we can see if crime rates change over months/years.

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

Using the above columns of the dataset will allow the creation of a predictive model to pin point times and locations of various offenses.
Additionally, the dataset also shows age, race, and ethnicity of the suspects and victims. These descriptors can also be used to draw futher conclusions on the overall crime statistics within New York City.
