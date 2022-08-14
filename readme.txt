READ ME


Data
------------------------------------------------------------------------
date.xls/.dta - original data from snscrape by date. 
month_2021.dta - contains appended data from date files

kaggle.csv - original kaggle data
kaggle_sentiment.csv - original kaggle without tweets, only sentiment scores
snscrape.dta - contains appended data from month files

snscrape_bydate.dta - contains snscrape data without tweets but with date, sentiment and number of pos/neg/neut
kaggle_bydate.dta - same but with kaggle data

prices.dta/.csv/.xls - bitcoin price data from yahoo finance

final.dta - merged snscrape_bydate.dta and kaggle_bydate.dta

-------------------------------------------------------------------------
Code
-------------------------------------------------------------------------
Kaggle Cleanup and Sentiment Analysis.ipynb - since stata could not load kaggle.csv/.xls properly, I use python to make the kaggle_bydate.csv file
snscrape.ipynb - I scrape tweets by changing the date using the snscrape package; clean; compute sentiment and mean daily sentiment
analysis.do - prepares the final data for analysis
analysis2.do - main analysis file


-------------------------------------------------------------------------
Unused Code
-------------------------------------------------------------------------
Twitter API Scraper.ipynb - this was the first attempting to scrape tweets using Twitter's Developer options
Bitcoin Analysis Experiment.ipynb - contains a function where I split the date string, some attempts at using Google Translator API
Bitcoin Analysis Experiment2.ipynb - here I do some groupby, not sure if i ended up using 


oct9
0.24611413544379884