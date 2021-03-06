% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GBAT.borough_code.R
\name{GBAT.borough_code}
\alias{GBAT.borough_code}
\title{Geocode NYC addresses with borough code}
\usage{
GBAT.borough_code(input_df, id_colname, address_colname, borough_code_colname)
}
\arguments{
\item{input_df}{a data frame containing NYC address}

\item{id_colname}{the column name of an arbitrary unique identifier}

\item{address_colname}{the column name of addresses where addresses are in the format of house number and street name (e.g., 123 Smith Street)}

\item{borough_code_colname}{the column name of the borough code where Manhattan = 1, Bronx = 2, Brooklyn = 3, Queens = 4, and Staten Island = 5}
}
\value{
The \code{GBAT.borough_code} function returns almost 200 columns which are described in the \href{https://www1.nyc.gov/assets/planning/download/pdf/data-maps/open-data/upg.pdf?r=16c}{Geosupport Desktop User Guide}
}
\description{
The \code{GBAT.zip_code} function geocodes a data frame of NYC addresses using house number, street name, and borough code.
}
\details{
The New York Department of City Planning's
\href{https://www1.nyc.gov/site/planning/data-maps/open-data/dwn-gde-home.page}{Geosupport Desktop} geocoding software
must be installed prior to installing the \code{rGBAT16AB} package.
}
\examples{
# create a data frame of addresses
ADDR <- c("448 Lafayette Ave","727 Manhattan Ave","31-00 47th Ave","308 E 78th S","10 Morton St")
ZIP_CODE <- c("11205","11222","11101","10075","10014")
BORO_CODE <- c(3,3,4,1,1)
u_id <- 1:length(ADDR)
df = data.frame(u_id, ADDR, ZIP_CODE, BORO_CODE)

#geocode data frame
df_gc <- GBAT.borough_code(df,'u_id','ADDR','BORO_CODE')
}

