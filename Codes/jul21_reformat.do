clear
cd "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data"


import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\07_08_2021.csv"
drop v1
save 07_08_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\07_09_2021.csv"
drop v1
save 07_09_2021.dta
clear


import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\07_10_2021.csv"
drop v1
save 07_10_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\07_11_2021.csv"
drop v1
save 07_11_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\07_12_2021.csv"
drop v1
save 07_12_2021.dta
clear


import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\07_13_2021.csv"
drop v1
save 07_13_2021.dta
clear


import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\07_14_2021.csv"
drop v1
save 07_14_2021.dta
clear


import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\07_15_2021.csv"
drop v1
save 07_15_2021.dta
clear

import delimited "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\07_31_2021.csv"
drop v1
save 07_31_2021.dta
clear

//-----------------------------------

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
append using 07_31_2021.dta

save jul_2021.dta

