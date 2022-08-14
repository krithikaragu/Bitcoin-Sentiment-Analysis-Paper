clear
cd "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data"


ssc install outreg2

use final.dta

tsset Date

//first difference5 Open data and redo ADF
gen Open_d1 = Open - Open[_n-1]

gen log_sentiment = log(Sentiment)
gen log_open = log(Open)
gen log_volume = log(Volume)
gen log_pos = log(num_pos)
gen log_neut = log(num_neut)
gen log_neg = log(num_neg)

//log returns by Miller's approach
gen returns = Open/Open[_n-1]
gen ln_returns = ln(returns)

egen sd_sentiment = sd(Sentiment)
gen std_sentiment = ln(Sentiment/Sentiment[_n-1])/sd_sentiment


outreg2 using "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Figures\table1.tex", replace sum(log) keep(Sentiment Open Volume ln_returns std_sentiment)


//graphs
#delimit ;
 graph twoway (scatter count Date), 
 xtitle("Date", size(small)) title("Number of Tweets in Analysis by Date, July 2-October 9 2021", size(small));
#delimit cr


#delimit ;
 graph twoway (line Sentiment Date), 
 xtitle("Date", size(small)) title("VADER Sentiment, July 2-October 9 2021", size(small));
#delimit cr

#delimit ;
 graph twoway (line std_sentiment Date), 
 xtitle("Date", size(small)) title("Standardized VADER Sentiment, July 2-October 9 2021", size(small)) ;
#delimit cr

#delimit ;
 graph twoway (line Open Date), 
 xtitle("Date", size(small)) title("Bitcoin Open Price, July 2-October 9 2021", size(small)) ;
#delimit cr

#delimit ;
 graph twoway (line ln_returns Date), 
 xtitle("Date", size(small)) title("Log Price Returns, July 2-October 9 2021", size(small)) ;
#delimit cr

cd "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Figures"
gr combine stdsentiment_date.gph lnreturns_date.gph, col(1) iscale(1)


#delimit ;
 graph twoway (line num_neg Date), 
 xtitle("Date", size(small)) title("Number of Negative Bitcoin Tweets, July 2-October 9 2021", size(small)) ;
#delimit cr


#delimit ;
 graph twoway (line Volume Date), 
 xtitle("Date", size(small)) title("Volume of Bitcoin Exchanges, July 2-October 9 2021", size(small)) ;
#delimit cr


// //summary stats
// tabstat Sentiment Open Volume ln_returns std_sentiment, c(stat) stat(mean sd min max n)
// ereturn list
// outreg2 using table1, replace tex dec(4)
// 
// est clear  // clear the est locals
//
// estpost tabstat Sentiment Open Volume ln_returns std_sentiment, c(stat) stat(mean sd min max n)
// esttab, ///
//  cells("sum(fmt(%13.0fc)) mean(fmt(%13.2fc)) sd(fmt(%13.2fc)) min max count") nonumber ///
//   nomtitle nonote noobs label collabels("Sum" "Mean" "SD" "Min" "Max" "N")
//
//  
//   esttab using "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\Tables\table1.tex", replace ////
//  cells("sum(fmt(%13.0fc)) mean(fmt(%13.2fc)) sd(fmt(%13.2fc)) min max count") nonumber ///
//   nomtitle nonote noobs label booktabs f ///
//   collabels("Sum" "Mean" "SD" "Min" "Max" "N")

dfuller Sentiment  //stationary
dfuller Open
dfuller Volume //stationary
dfuller num_pos
dfuller num_neut
dfuller num_neg

pperron Sentiment
pperron Open
pperron Volume
pperron num_pos
pperron num_neut
pperron num_neg

swilk Sentiment
swilk Open
swilk Volume
swilk num_pos
swilk num_neut
swilk num_neg


dfuller Open_d1 //now it is stationary
pperron Open_d1


//find optimal lag length
varsoc num_pos Volume, maxlag(15)
varsoc num_pos returns, maxlag(15)
varsoc num_neg Volume, maxlag(15)
varsoc num_neg returns, maxlag(15)
varsoc std_sentiment ln_returns, maxlag(15)
varsoc Sentiment returns, maxlag(15)
varsoc Sentiment Volume, maxlag(15)

//granger test
var num_pos Volume, lags(1)
vargranger
var num_pos returns, lags(1)
vargranger
var num_neg Volume, lags(1)
vargranger
var num_neg returns, lags(1)
vargranger
var std_sentiment ln_returns
vargranger
var Sentiment returns, lags(1)
vargranger
var Sentiment Volume, lags (1)
vargranger


//test for cointegration - johansen's
vecrank num_neg Volume, trend(constant) lags(1)

