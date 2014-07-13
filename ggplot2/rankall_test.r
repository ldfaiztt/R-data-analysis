# Script to test rankall.R

setwd("/Desktop")
source("rankall.R")

head(rankall("heart attack", 20), 10)
#                              hospital state
#1                                 <NA>    AK
#2       D W MCMILLAN MEMORIAL HOSPITAL    AL
#3    ARKANSAS METHODIST MEDICAL CENTER    AR
#4  JOHN C LINCOLN DEER VALLEY HOSPITAL    AZ
#5                SHERMAN OAKS HOSPITAL    CA
#6             SKY RIDGE MEDICAL CENTER    CO
#7              MIDSTATE MEDICAL CENTER    CT
#8                                 <NA>    DC
#9                                 <NA>    DE
#10      SOUTH FLORIDA BAPTIST HOSPITAL    FL

tail(rankall("pneumonia", "worst"), 3)
#                                     hospital state
#52 MAYO CLINIC HEALTH SYSTEM - NORTHLAND, INC    WI
#53                     PLATEAU MEDICAL CENTER    WV
#54           NORTH BIG HORN HOSPITAL DISTRICT    WY

tail(rankall("heart failure"), 10)
#                                                            hospital state
#45                         WELLMONT HAWKINS COUNTY MEMORIAL HOSPITAL    TN
#46                                        FORT DUNCAN MEDICAL CENTER    TX
#47 VA SALT LAKE CITY HEALTHCARE - GEORGE E. WAHLEN VA MEDICAL CENTER    UT
#48                                          SENTARA POTOMAC HOSPITAL    VA
#49                            GOV JUAN F LUIS HOSPITAL & MEDICAL CTR    VI
#50                                              SPRINGFIELD HOSPITAL    VT
#51                                         HARBORVIEW MEDICAL CENTER    WA
#52                                    AURORA ST LUKES MEDICAL CENTER    WI
#53                                         FAIRMONT GENERAL HOSPITAL    WV
#54                                        CHEYENNE VA MEDICAL CENTER    WY