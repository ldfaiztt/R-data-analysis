########
# Module 11

## Property Tax data

# 1. Using your numeric lot size variable created from module 10,
#	compute the Spearman correlation between lot size and cityTax
#	among those houses that are primary residences
# 	(pick up the data where you left off)

# 2. Fit a regression model with cityTax as the outcome - what
#	is the coefficient for lot size, as well as its t-statistic
#	and p-value? How much do these metrics change if you 
#	transform the variables (e.g. log10)

###########
#	Download: 'http://biostat.mc.vanderbilt.edu/wiki/pub/Main/DataSets/cdystonia.sav'
#	And then place in your working directory

#	load("cdystonia.sav")
#	codebook: http://biostat.mc.vanderbilt.edu/wiki/pub/Main/DataSets/Ccdystonia.html

# Randomized to placebo (N=36), 5000 units of BotB (N=36), 
#	10,000 units of BotB (N=37)
# Response variable: total score on Toronto Western Spasmodic Torticollis Rating 
#	Scale (TWSTRS), measuring severity, pain, and disability of cervical dystonia 
#	(high scores mean more	impairment)
# TWSTRS measured at baseline (week 0) and weeks 2, 4, 8, 12, 16 
#	after treatment began

# 3. Visualize data using lattice or ggplot2