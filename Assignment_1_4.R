#Assignment 1.4 - Session 1

#Problem 1
#1. Read multiple JSON files into a directory to convert into a dataset.
#I have files text1, text2, text3 in the directory JSON.

#Solution: 1
#load the package rjson
library(rjson)

#Read the files text1,text2,text3 using the fromJSON() function.
json_text1<- fromJSON(file = "text1.json")
json_text1  
json_text2<- fromJSON(file = "text2.json")
json_text2
json_text3<- fromJSON(file = "text3.json")
json_text3

json_apnd <- data.frame(js1,js2,js3)
print(json_apnd)

#Problem: 2
#2. Parse the following JSON into a data frame.
js<-'{
"name": null, "release_date_local": null, "title": "3 (2011)",
"opening_weekend_take": 1234, "year": 2011,
"release_date_wide": "2011-09-16", "gross": 59954
}'

#Solution: 2

#First we copy the above data into a text editor (eg: notepad)
#Then save the file with a .json extension

#Use fromJSON() function to read the json file that was created (cr.json)
cr_json <- fromJSON(cr.json)
cr_json


#Use the function data.frame() to convert it into R data frame
json_fram<- data.frame(js4)
json_fram


#Problem: 3
#3. Write a script for Variable Binning using R.

#Solution: 3
#Binning is dividing a continuous variables into category.
#we use cs2m dataset and do binning on "Age" variable

cs2m<-read.csv("cs2m.csv")
str(cs2m)
summary(cs2m$Age)

cs2m1 <- cs2m
summary(cs2m1)

#using within() function
cs2m1<- within(l,{
  agecat<- NA
  agecat[Age>=15 & Age<=25] <- "Low"
  agecat[Age>=26 & Age<=40] <- "Middle"
  agecat[Age>=41] <- "High"
})
head(cs2m1)
tail(cs2m1)
