library(RGoogleAnalytics)
library(lubridate)
library(RForcecom)


# Load the token object
load("oauth_token")

profiles <- GetProfiles(oauth_token)


# Paris -------------------------------------------------------------------------------------------------------------
query.list <- Init(start.date = "2014-01-01",
                   end.date = "2018-11-28",
                   dimensions = "ga:date,ga:source, ga:medium,ga:campaign",
                   #metrics = "ga:goal16Completions",
                   metrics = "ga:sessions",
                   max.results = 90000,
                   table.id = "ga:46856038")

# Create the query object
ga.query <- QueryBuilder(query.list)

GA.paris <- GetReportData(ga.query, oauth_token,paginate_query = F)

# Heidelberg ---------------------------------------------------------------------------------------------------------
query.list <- Init(start.date = "2014-01-01",
                   end.date = "2018-11-28",
                   dimensions = "ga:date,ga:source, ga:medium,ga:campaign",
                   metrics = "ga:sessions",
                   max.results = 90000,
                   table.id = "ga:52041505")

# Create the query object
ga.query <- QueryBuilder(query.list)

GA.heidelberg <- GetReportData(ga.query, oauth_token,paginate_query = T)

# Madrid --------------------------------------------------------------------------------------------------------------
query.list <- Init(start.date = "2014-01-01",
                   end.date = "2018-11-28",
                   dimensions = "ga:date,ga:source, ga:medium,ga:campaign",
                   metrics = "ga:sessions",
                   max.results = 90000,
                   table.id = "ga:51262284")

# Create the query object
ga.query <- QueryBuilder(query.list)

GA.madrid <- GetReportData(ga.query, oauth_token,paginate_query = F)
