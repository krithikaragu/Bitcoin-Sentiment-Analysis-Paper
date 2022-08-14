use "C:\Users\krith\OneDrive - McGill University\McGill\MA Year 2\Research\Paper\Data\kaggle_sentiment2.dta" 
quietly by Date: gen dup = cond(_N==1, 0, _n)
bysort Date : gen max_count = dup[_N]
keep Date max_count mean_compound dup
drop if dup>1
drop dup
