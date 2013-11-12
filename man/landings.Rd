\name{landings}
\alias{landings}
\title{Function to get landings data}
\usage{
  landings(species = NA, country = NA, ...)
}
\arguments{
  \item{species}{A three letter international species code}

  \item{country}{A three letter iso3 country code}

  \item{...}{Optional arguments}
}
\value{
  data.frame
}
\description{
  Function retrieves landings data as aggregate, by
  country, or by species
}
\examples{
\dontrun{
# Get global landings data
data <- landings()
# Get data for a particular country
usa <- landings(country = "USA")
# Get data for a particular species
cod <- landings(species = "COD")
}
}

