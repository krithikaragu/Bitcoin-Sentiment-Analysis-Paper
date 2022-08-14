clear
cd "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data"


//save sentiment data for dates of interest
import excel "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\kaggle_snscrape_bydate.xlsx", sheet("Sheet1") firstrow
sort Date
gen index = _n

drop if index>=141
drop if index<=40

drop index	
save sentiment.dta, replace


//save snscrape data with number of pos, negative, neutral
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\07_06_2021.csv"
drop v1
gen date = date("July 6, 2021","MDY")
format date %td
save 07_06_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\07_07_2021.csv"
drop v1
gen date = date("July 7, 2021","MDY")
format date %td
save 07_07_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\07_08_2021.csv"
drop v1
gen date = date("July 8, 2021","MDY")
format date %td
save 07_08_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\07_09_2021.csv"
drop v1
gen date = date("July 9, 2021","MDY")
format date %td
save 07_09_2021.dta, replace
clear


import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\07_10_2021.csv"
drop v1
gen date = date("July 10, 2021","MDY")
format date %td
save 07_10_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\07_11_2021.csv"
drop v1
gen date = date("July 11, 2021","MDY")
format date %td
save 07_11_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\07_12_2021.csv"
drop v1
gen date = date("July 12, 2021","MDY")
format date %td
save 07_12_2021.dta, replace
clear


import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\07_13_2021.csv"
drop v1
gen date = date("July 13, 2021","MDY")
format date %td
save 07_13_2021.dta, replace
clear


import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\07_14_2021.csv"
drop v1
gen date = date("July 14, 2021","MDY")
format date %td
save 07_14_2021.dta, replace
clear


import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\07_15_2021.csv"
drop v1
gen date = date("July 15, 2021","MDY")
format date %td
save 07_15_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\07_16_2021.csv"
drop v1
gen date = date("July 16, 2021","MDY")
format date %td
save 07_16_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\07_31_2021.csv"
drop v1
gen date = date("July 31, 2021","MDY")
format date %td
save 07_31_2021.dta, replace

clear 
use 07_06_2021.dta
append using 07_07_2021.dta
append using 07_08_2021.dta
append using 07_09_2021.dta
append using 07_10_2021.dta
append using 07_11_2021.dta
append using 07_12_2021.dta
append using 07_13_2021.dta
append using 07_14_2021.dta
append using 07_15_2021.dta
append using 07_16_2021.dta
append using 07_31_2021.dta

save jul_2021.dta, replace

clear 
import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_01_2021.csv"
drop v1
gen date = date("August 1, 2021","MDY")
format date %td
save 08_01_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_02_2021.csv"
drop v1
gen date = date("August 2, 2021","MDY")
format date %td
save 08_02_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_03_2021.csv"
drop v1
gen date = date("August 3, 2021","MDY")
format date %td
save 08_03_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_04_2021.csv"
drop v1
gen date = date("August 4, 2021","MDY")
format date %td
save 08_04_2021.dta, replace
clear


import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_10_2021.csv"
drop v1
gen date = date("August 10, 2021","MDY")
format date %td
save 08_10_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_11_2021.csv"
drop v1
gen date = date("August 11, 2021","MDY")
format date %td
save 08_11_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_12_2021.csv"
drop v1
gen date = date("August 12, 2021","MDY")
format date %td
save 08_12_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_13_2021.csv"
drop v1
gen date = date("August 13, 2021","MDY")
format date %td
save 08_13_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_22_2021.csv"
drop v1
gen date = date("August 22, 2021","MDY")
format date %td
save 08_22_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_27_2021.csv"
drop v1
gen date = date("August 27, 2021","MDY")
format date %td
save 08_27_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_28_2021.csv"
drop v1
gen date = date("August 28, 2021","MDY")
format date %td
save 08_28_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_29_2021.csv"
drop v1
gen date = date("August 29, 2021","MDY")
format date %td
save 08_29_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_30_2021.csv"
drop v1
gen date = date("August 30, 2021","MDY")
format date %td
save 08_30_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_31_2021.csv"
drop v1
gen date = date("August 31, 2021","MDY")
format date %td
save 08_31_2021.dta, replace

clear 
use 08_01_2021.dta
append using 08_02_2021.dta
append using 08_03_2021.dta
append using 08_04_2021.dta
append using 08_10_2021.dta
append using 08_11_2021.dta
append using 08_12_2021.dta
append using 08_13_2021.dta
append using 08_22_2021.dta
append using 08_27_2021.dta
append using 08_28_2021.dta
append using 08_29_2021.dta
append using 08_30_2021.dta
append using 08_31_2021.dta


save aug_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_01_2021.csv"
drop v1
gen date = date("September 1, 2021","MDY")
format date %td
save 09_01_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_02_2021.csv"
drop v1
gen date = date("September 2, 2021","MDY")
format date %td
save 09_02_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_03_2021.csv"
drop v1
gen date = date("September 3, 2021","MDY")
format date %td
save 09_03_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_04_2021.csv"
drop v1
gen date = date("September 4, 2021","MDY")
format date %td
save 09_04_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_05_2021.csv"
drop v1
gen date = date("September 5, 2021","MDY")
format date %td
save 09_05_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_06_2021.csv"
drop v1
gen date = date("September 6, 2021","MDY")
format date %td
save 09_06_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_07_2021.csv"
drop v1
gen date = date("September 7, 2021","MDY")
format date %td
save 09_07_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_08_2021.csv"
drop v1
gen date = date("September 8, 2021","MDY")
format date %td
save 09_08_2021.dta, replace
clear


import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_09_2021.csv"
drop v1
gen date = date("September 9, 2021","MDY")
format date %td
save 09_09_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_11_2021.csv"
drop v1
gen date = date("September 11, 2021","MDY")
format date %td
save 09_11_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_12_2021.csv"
drop v1
gen date = date("September 12, 2021","MDY")
format date %td
save 09_12_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_13_2021.csv"
drop v1
gen date = date("September 13, 2021","MDY")
format date %td
save 09_13_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_14_2021.csv"
drop v1
gen date = date("September 14, 2021","MDY")
format date %td
save 09_14_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_15_2021.csv"
drop v1
gen date = date("September 15, 2021","MDY")
format date %td
save 09_15_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_16_2021.csv"
drop v1
gen date = date("September 16, 2021","MDY")
format date %td
save 09_16_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_17_2021.csv"
drop v1
gen date = date("September 17, 2021","MDY")
format date %td
save 09_17_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_18_2021.csv"
drop v1
gen date = date("September 18, 2021","MDY")
format date %td
save 09_18_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_19_2021.csv"
drop v1
gen date = date("September 19, 2021","MDY")
format date %td
save 09_19_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_20_2021.csv"
drop v1
gen date = date("September 20, 2021","MDY")
format date %td
save 09_20_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_21_2021.csv"
drop v1
gen date = date("September 21, 2021","MDY")
format date %td
save 09_21_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_22_2021.csv"
drop v1
gen date = date("September 22, 2021","MDY")
format date %td
save 09_22_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_23_2021.csv"
drop v1
gen date = date("September 23, 2021","MDY")
format date %td
save 09_23_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_24_2021.csv"
drop v1
gen date = date("September 24, 2021","MDY")
format date %td
save 09_24_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_25_2021.csv"
drop v1
gen date = date("September 25, 2021","MDY")
format date %td
save 09_25_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_26_2021.csv"
drop v1
gen date = date("September 26, 2021","MDY")
format date %td
save 09_26_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_27_2021.csv"
drop v1
gen date = date("September 27, 2021","MDY")
format date %td
save 09_27_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_28_2021.csv"
drop v1
gen date = date("September 28, 2021","MDY")
format date %td
save 09_28_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_29_2021.csv"
drop v1
gen date = date("September 29, 2021","MDY")
format date %td
save 09_29_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_30_2021.csv"
drop v1
gen date = date("September 30, 2021","MDY")
format date %td
save 09_30_2021.dta, replace
clear

use 09_01_2021.dta
append using 09_02_2021.dta
append using 09_03_2021.dta
append using 09_04_2021.dta
append using 09_05_2021.dta
append using 09_06_2021.dta
append using 09_07_2021.dta
append using 09_08_2021.dta
append using 09_09_2021.dta
append using 09_11_2021.dta
append using 09_12_2021.dta
append using 09_13_2021.dta
append using 09_14_2021.dta
append using 09_15_2021.dta
append using 09_16_2021.dta
append using 09_17_2021.dta
append using 09_18_2021.dta
append using 09_19_2021.dta
append using 09_20_2021.dta
append using 09_21_2021.dta
append using 09_22_2021.dta
append using 09_23_2021.dta
append using 09_24_2021.dta
append using 09_25_2021.dta
append using 09_26_2021.dta
append using 09_27_2021.dta
append using 09_28_2021.dta
append using 09_29_2021.dta
append using 09_30_2021.dta

save sept_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\10_01_2021.csv"
drop v1
gen date = date("October 1, 2021","MDY")
format date %td
save 10_01_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\10_02_2021.csv"
drop v1
gen date = date("October 2, 2021","MDY")
format date %td
save 10_02_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\10_03_2021.csv"
drop v1
gen date = date("October 3, 2021","MDY")
format date %td
save 10_03_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\10_04_2021.csv"
drop v1
gen date = date("October 4, 2021","MDY")
format date %td
save 10_04_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\10_05_2021.csv"
drop v1
gen date = date("October 5, 2021","MDY")
format date %td
save 10_05_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\10_06_2021.csv"
drop v1
gen date = date("October 6, 2021","MDY")
format date %td
save 10_06_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\10_07_2021.csv"
drop v1
gen date = date("October 7, 2021","MDY")
format date %td
save 10_07_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\10_08_2021.csv"
drop v1
gen date = date("October 8, 2021","MDY")
format date %td
save 10_08_2021.dta, replace
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\10_09_2021.csv"
drop v1
gen date = date("October 9, 2021","MDY")
format date %td
save 10_09_2021.dta, replace
clear

use 10_01_2021.dta
append using 10_02_2021.dta
append using 10_03_2021.dta
append using 10_04_2021.dta
append using 10_05_2021.dta
append using 10_06_2021.dta
append using 10_07_2021.dta
append using 10_08_2021.dta
append using 10_09_2021.dta
save oct_2021.dta, replace

//compute the number of positive, negative, neutral tweets by date
clear
use jul_2021.dta
gen positive = sentiment if sentiment>0
gen neutral = sentiment if sentiment==0
gen negative = sentiment if sentiment<0
drop content
save jul_2021.dta, replace

clear
use aug_2021.dta
gen positive = sentiment if sentiment>0
gen neutral = sentiment if sentiment==0
gen negative = sentiment if sentiment<0
drop content
save aug_2021.dta, replace

clear
use sept_2021.dta
gen positive = sentiment if sentiment>0
gen neutral = sentiment if sentiment==0
gen negative = sentiment if sentiment<0
save sept_2021.dta, replace

clear
use oct_2021.dta
gen positive = sentiment if sentiment>0
gen neutral = sentiment if sentiment==0
gen negative = sentiment if sentiment<0
save oct_2021.dta, replace

use jul_2021.dta
append using aug_2021.dta
append using sept_2021.dta
append using oct_2021.dta
save snscrape.dta, replace

//drop duplicate tweets generated by bots
sort cleaned_tweets
quietly by cleaned_tweets: gen dup = cond(_N==1, 0, _n)
drop if dup>=1
save snscrape.dta, replace
clear

//now get the daily sentiment and pos/neg/neutral scores for snscrape data
use snscrape.dta
bysort date: egen mean_sentiment = mean(sentiment)
egen num_pos = count(positive), by(date)
egen num_neut = count(neutral), by(date)
egen num_neg = count(negative), by(date)
keep date mean_sentiment num_pos num_neg num_neut
gen count = num_pos + num_neg + num_neut
quietly by date:  gen dup = cond(_N==1,0,_n)
drop if dup>1
drop dup
rename mean_sentiment sentiment
save snscrape_bydate.dta, replace

///now get the daily sentiment and pos/neg/neutral scores for kaggle data
clear
import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\kaggle_sentiment.csv"
drop v1
bysort date: egen mean_sentiment = mean(sentiment)
gen positive = sentiment if sentiment>0
gen negative = sentiment if sentiment<0
gen neutral = sentiment if sentiment==0
egen num_pos = count(positive), by(date)
egen num_neut = count(neutral), by(date)
egen num_neg = count(negative), by(date)
keep date mean_sentiment num_pos num_neg num_neut
gen count = num_pos + num_neg + num_neut
quietly by date:  gen dup = cond(_N==1,0,_n)
drop if dup>1
drop dup

//fix date format
gen date2 = date(date, "YMD")
format %td date2
drop date
rename date2 date
rename mean_sentiment sentiment
di date("20210716", "YMD")
drop if date == 22477 //we want this date from the snscrape set
di date("20210804", "YMD")
drop if date == 22496 //we want this date from the snscrape set
save kaggle_bydate.dta, replace


//combine kaggle and snscrape datasets
clear
use kaggle_bydate.dta
append using snscrape_bydate.dta
sort date
rename date Date
save kaggle_snscrape_bydate.dta, replace

//merge datasets
clear
use prices.dta

merge 1:1 Date using kaggle_snscrape_bydate.dta
drop if _merge==1
drop if _merge==2
rename sentiment Sentiment
di date("20211009","YMD")  //drop non consecutive dates
drop if Date> 22562			//this num is generated when running previous line alone
di date("20210702","YMD") 
drop if Date<22463
save final.dta, replace


