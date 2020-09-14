library(democracyData) #https://github.com/xmarquez/democracyData/

#Import Freedom House data using democracyData library 

fh <- download_fh(verbose = TRUE) 

#Import Data from IDEA Gender Quota Database https://www.idea.int/data-tools/data/gender-quotas/database 

library(readxl)
IDEA_quota_data <- read_excel("IDEA_quota_data.xls")

#Selecting authoritarian regimes by year
library(dplyr)

fh_2019 <- fh %>%
  filter(year == 2019)

quota_fh <- left_join(IDEA_quota_data, fh_2019, by = c("Country" = "fh_country")) 
