clear
cd "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data"



import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_09_2021.csv"
drop v1
save 09_09_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_11_2021.csv"
drop v1
save 09_11_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_12_2021.csv"
drop v1
save 09_12_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_13_2021.csv"
drop v1
save 09_13_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_14_2021.csv"
drop v1
save 09_14_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_15_2021.csv"
drop v1
save 09_15_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_16_2021.csv"
drop v1
save 09_16_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_17_2021.csv"
drop v1
save 09_17_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_18_2021.csv"
drop v1
save 09_18_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_19_2021.csv"
drop v1
save 09_19_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_20_2021.csv"
drop v1
save 09_20_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_21_2021.csv"
drop v1
save 09_21_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_22_2021.csv"
drop v1
save 09_22_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_23_2021.csv"
drop v1
save 09_23_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_24_2021.csv"
drop v1
save 09_24_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_25_2021.csv"
drop v1
save 09_25_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_26_2021.csv"
drop v1
save 09_26_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_27_2021.csv"
drop v1
save 09_27_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_28_2021.csv"
drop v1
save 09_28_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_29_2021.csv"
drop v1
save 09_29_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\09_30_2021.csv"
drop v1
save 09_30_2021.dta
clear




//-----------------------------------

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




save sept_2021.dta

