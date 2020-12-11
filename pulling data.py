# -*- coding: utf-8 -*-
"""
Created on Mon Nov  9 13:30:56 2020

@author: rudny
"""
#Pulls data from spotrac.com and imports as excel workbooks
import pandas as pd


#WNBA Data
URL = "https://www.spotrac.com/wnba/rankings/base/guard/"
tables = pd.read_html(URL)
#tables[0].to_excel("GuardData.xlsx")


URL2 = "https://www.spotrac.com/wnba/rankings/base/forward/"
tables = pd.read_html(URL2)
#tables[0].to_excel("ForwardData.xlsx")


URL3 = "https://www.spotrac.com/wnba/rankings/base/center/"
tables = pd.read_html(URL3)
#tables[0].to_excel("CenterData.xlsx")

#NBA Data
URL4 = "https://www.spotrac.com/nba/rankings/2020-21/base/guard/"
tables = pd.read_html(URL4)
#tables[0].to_excel("NBAGuardData.xlsx")

URL5 = "https://www.spotrac.com/nba/rankings/2020-21/base/forward/"
tables = pd.read_html(URL5)
#tables[0].to_excel("NBAForwardData.xlsx")

URL6 = "https://www.spotrac.com/nba/rankings/2020-21/base/center/"
tables = pd.read_html(URL6)
#tables[0].to_excel("NBACenterData.xlsx")

#LPGA Data

URL7 = "https://www.spotrac.com/lpga/"
tables = pd.read_html(URL7)
#tables[0].to_excel("LPGAData.xlsx")

#PGA 2019-2020 data
URL8 = "https://www.spotrac.com/pga/2020/"
tables1 = pd.read_html(URL8)
#tables[0].to_excel("PGAData.xlsx")
#2018-2019
URLb = "https://www.spotrac.com/pga/2019/"
tables2 = pd.read_html(URLb)
#tables[0].to_excel("PGAData19.xlsx")
#2017-2018
URLc = "https://www.spotrac.com/pga/2018/"
tables3 = pd.read_html(URLc)
#tables[0].to_excel("PGAData18.xlsx")
#2016-2017
URLd = "https://www.spotrac.com/pga/2017/"
tables4 = pd.read_html(URLd)

#tables[0].to_excel("PGAData17.xlsx")
#2015-2016
URLe = "https://www.spotrac.com/pga/2018/"
tables5 = pd.read_html(URLe)

#tables[0].to_excel("PGAData16.xlsx")



#ATP data
URL9 = "https://www.spotrac.com/atp/"
tables = pd.read_html(URL9)
#tables[0].to_excel("ATPData.xlsx")

#WTA data
URLa = "https://www.spotrac.com/wta/"
tables = pd.read_html(URLa)
tables[0].to_excel("WTAData.xlsx")


