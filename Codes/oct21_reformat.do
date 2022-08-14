clear
cd "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data"



import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\10_01_2021.csv"
drop v1
save 10_01_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\10_02_2021.csv"
drop v1
save 10_02_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\10_03_2021.csv"
drop v1
save 10_03_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\10_04_2021.csv"
drop v1
save 10_04_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\10_05_2021.csv"
drop v1
save 10_05_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\10_06_2021.csv"
drop v1
save 10_06_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\10_07_2021.csv"
drop v1
save 10_07_2021.dta
clear


//-----------------------------------

clear 
use 10_01_2021.dta
append using 10_02_2021.dta
append using 10_03_2021.dta
append using 10_04_2021.dta
append using 10_05_2021.dta
append using 10_06_2021.dta
append using 10_07_2021.dta




save oct_2021.dta

