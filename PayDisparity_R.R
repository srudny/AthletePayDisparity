#Sydney Rudny
#Final Project
#December 15th, 2020

#import all libraries needed
library(ggthemes)
library(ggplot2)
library(dplyr)
library(plyr)
library(readr)
library(scales)

#imports the data from csv file
salary = read.csv("/Users/rudny/Documents/Fall 2020/IS 470/Final Project/FinalData.csv")
revenue = read.csv("/Users/rudny/Documents/Fall 2020/IS 470/Final Project/Revenues.csv")
#removes unwanted column
revenue[3]<- NULL
#filters revenue by leagues so the graph won't be overtaken by large revenues in NBA and PGA
revenue2<- revenue %>% filter(League == "PGA" |League == "NBA")
revenue3<- revenue %>% filter(League == "WNBA"|League == "LPGA"|League == "ATP"|League == "WTA")
#Bar chart of the revenues by leagues
ggplot(revenue2,aes(League,Revenues))+geom_bar(stat = "identity")+ylab("Revenue")+ scale_y_continuous(labels = comma)  +ggtitle("Revenue by League")+theme_fivethirtyeight()
ggplot(revenue3,aes(League,Revenues))+geom_bar(stat = "identity")+ylab("Revenue")+ scale_y_continuous(labels = comma)  +ggtitle("Revenue by League")+theme_fivethirtyeight()

#filters data into tables for each sport and then league
Tennis <- salary %>% filter(League == "ATP" | League == "WTA")
BB <- salary %>% filter(League == "WNBA"|League == "NBA")
Golf <- salary %>% filter(League == "LPGA"|League == "PGA")
WNBA <- salary %>% filter(League == "WNBA")
NBA <- salary %>% filter(League == "NBA")
PGA<- salary %>% filter(League == "PGA")
LPGA <- salary %>% filter(League == "LPGA")
ATP <- salary %>% filter(League == "ATP")
WTA <- salary %>% filter(League == "WTA")



#Boxplot of salary spread by sex
ggplot(salary,aes(Sex,Base))+geom_boxplot()+ylab("Base Salary")+ scale_y_continuous(labels = comma) +ggtitle("Salary Spread by Sex")
#Basketball M vs F sum base
ggplot(BB,aes(League,Base))+geom_bar(stat = "identity")+ scale_y_continuous(labels = comma) + ylab("Base Salary")+ ggtitle("Comparing Basketball Salaries")+theme_fivethirtyeight()

#WNBA distribution breakdown of salary by position
ggplot(WNBA,aes(Position,Base))+geom_violin(scale = "area")+ scale_y_continuous(labels = comma) +ylab("Base Salary")+ggtitle("Pay by Position in WNBA")

#NBA distribution breakdown of salary by position
ggplot(NBA,aes(Position,Base)) + geom_violin(scale = "area")+ scale_y_continuous(labels = comma) +ylab("Base Salary")+ggtitle("Pay by Position in NBA")

#Tennis M vs F sum pay comparison with bar chart
ggplot(Tennis,aes(League,Base))+geom_bar(stat = "identity")+ scale_y_continuous(labels = comma) + ylab("Base Salary")+ ggtitle("Comparing Tennis Salaries")+theme_fivethirtyeight()

#Distribution in salary for M vs F in tennis
ggplot(Tennis,aes(League,Base))+geom_violin(scale="area")+ scale_y_continuous(labels = comma) +ylab("Base Salary")+ggtitle("Distribution of Salary in ATP and WTA")

#Golf M vs F sum of base bar chart
ggplot(Golf,aes(League,Base))+geom_bar(stat = "identity")+ scale_y_continuous(labels = comma) + ylab("Base Salary")+ ggtitle("Comparing Golf Salaries")+theme_fivethirtyeight()

#Distribution in salary for M vs F in golf
ggplot(Golf,aes(League,Base))+geom_violin(scale="area")+ scale_y_continuous(labels = comma) +ylab("Base Salary")+ggtitle("Distribution of Salary in PGA and LPGA")


#Calculations needed for average salary ratio by league
mean(WNBA$Base)/mean(NBA$Base)
mean(WTA$Base)/mean(ATP$Base)
mean(LPGA$Base)/mean(PGA$Base)


