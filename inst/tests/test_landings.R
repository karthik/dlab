context("This related to countries and species")

test_that("Ensuring that country codes are a data.frame with two columns", {
          landings_data <- landings()
              landings_by_country <- landings(country = "USA")
      
              expect_that(ncol(landings_data) == 2, is_true()) ; 
        expect_that(landings_data, is_a("data.frame"))

             expect_that(ncol(landings_by_country) == 2, is_true()) ; 
        expect_that(landings_by_country, is_a("data.frame"))    
})
