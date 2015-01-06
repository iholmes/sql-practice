# practice
# install and load a new package
install.packages("RSQLite", dependencies=TRUE)
library(RSQLite)

driver <- dbDriver("SQLite")
conn <- dbConnect(driver, dbname="portal.mammals.sqlite")

results <- dbGetQuery(conn, "SELECT species, wgt, year 
                      FROM surveys")
dbDisconnect(conn)

#something
