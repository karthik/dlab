#' Function to get landings data 
#'
#' Function retrieves landings data as aggregate, by country, or by species
#'
#' @param species A three letter international species code
#' @param country A three letter iso3 country code
#' @param ... Optional arguments
#'
#' @return data.frame
#' @export
#' @importFrom RJSONIO fromJSON
#' @importFrom RCurl getForm
#' 
#' @examples \dontrun{
#' # Get global landings data
#' data <- landings()
#' # Get data for a particular country
#' usa <- landings(country = "USA")
#' # Get data for a particular species
#' cod <- landings(species = "COD")
#' }

landings <- function(species = NA, country = NA, ...) {

base_url <- "http://openfisheries.org/api/landings"

        if(is.na(species) && is.na(country)) {
        url <- base_url
        }

        if(!is.na(country) && is.na(species)) {
                # country
         url <- paste(base_url, "/countries/", country, sep = "")
        }

        if(!is.na(species) && is.na(country)) {
         url <- paste(base_url, "/species/", species, sep = "")
        }


        data <- suppressWarnings(getForm(url, .params = list(...)))
        data <- fromJSON(I(data))
        landings_data <- as.data.frame(do.call(rbind, data))
}