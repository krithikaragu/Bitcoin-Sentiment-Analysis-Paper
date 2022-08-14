clear
cd "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data"


import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_01_2021.csv"
drop v1
save 08_01_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_02_2021.csv"
drop v1
save 08_02_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_03_2021.csv"
drop v1
save 08_03_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_10_2021.csv"
drop v1
save 08_10_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_11_2021.csv"
drop v1
save 08_11_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_12_2021.csv"
drop v1
save 08_12_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_13_2021.csv"
drop v1
save 08_13_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_22_2021.csv"
drop v1
save 08_22_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_27_2021.csv"
drop v1
save 08_27_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_28_2021.csv"
drop v1
save 08_28_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_29_2021.csv"
drop v1
save 08_29_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_30_2021.csv"
drop v1
save 08_30_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\08_31_2021.csv"
drop v1
save 08_31_2021.dta
clear




//-----------------------------------

clear 
use 08_01_2021.dta
append using 08_02_2021.dta
append using 08_03_2021.dta
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


save aug_2021.dta

