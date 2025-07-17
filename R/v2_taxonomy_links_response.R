#' Create a new V2TaxonomyLinksResponse
#'
#' @description
#' V2TaxonomyLinksResponse Class
#'
#' @docType class
#' @title V2TaxonomyLinksResponse
#' @description V2TaxonomyLinksResponse Class
#' @format An \code{R6Class} generator object
#' @field tax_id  character [optional]
#' @field encyclopedia_of_life  character [optional]
#' @field global_biodiversity_information_facility  character [optional]
#' @field inaturalist  character [optional]
#' @field viralzone  character [optional]
#' @field wikipedia  character [optional]
#' @field generic_links  list(\link{V2TaxonomyLinksResponseGenericLink}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2TaxonomyLinksResponse <- R6::R6Class(
  "V2TaxonomyLinksResponse",
  public = list(
    `tax_id` = NULL,
    `encyclopedia_of_life` = NULL,
    `global_biodiversity_information_facility` = NULL,
    `inaturalist` = NULL,
    `viralzone` = NULL,
    `wikipedia` = NULL,
    `generic_links` = NULL,

    #' @description
    #' Initialize a new V2TaxonomyLinksResponse class.
    #'
    #' @param tax_id tax_id
    #' @param encyclopedia_of_life encyclopedia_of_life
    #' @param global_biodiversity_information_facility global_biodiversity_information_facility
    #' @param inaturalist inaturalist
    #' @param viralzone viralzone
    #' @param wikipedia wikipedia
    #' @param generic_links generic_links
    #' @param ... Other optional arguments.
    initialize = function(`tax_id` = NULL, `encyclopedia_of_life` = NULL, `global_biodiversity_information_facility` = NULL, `inaturalist` = NULL, `viralzone` = NULL, `wikipedia` = NULL, `generic_links` = NULL, ...) {
      if (!is.null(`tax_id`)) {
        if (!(is.character(`tax_id`) && length(`tax_id`) == 1)) {
          stop(paste("Error! Invalid data for `tax_id`. Must be a string:", `tax_id`))
        }
        self$`tax_id` <- `tax_id`
      }
      if (!is.null(`encyclopedia_of_life`)) {
        if (!(is.character(`encyclopedia_of_life`) && length(`encyclopedia_of_life`) == 1)) {
          stop(paste("Error! Invalid data for `encyclopedia_of_life`. Must be a string:", `encyclopedia_of_life`))
        }
        self$`encyclopedia_of_life` <- `encyclopedia_of_life`
      }
      if (!is.null(`global_biodiversity_information_facility`)) {
        if (!(is.character(`global_biodiversity_information_facility`) && length(`global_biodiversity_information_facility`) == 1)) {
          stop(paste("Error! Invalid data for `global_biodiversity_information_facility`. Must be a string:", `global_biodiversity_information_facility`))
        }
        self$`global_biodiversity_information_facility` <- `global_biodiversity_information_facility`
      }
      if (!is.null(`inaturalist`)) {
        if (!(is.character(`inaturalist`) && length(`inaturalist`) == 1)) {
          stop(paste("Error! Invalid data for `inaturalist`. Must be a string:", `inaturalist`))
        }
        self$`inaturalist` <- `inaturalist`
      }
      if (!is.null(`viralzone`)) {
        if (!(is.character(`viralzone`) && length(`viralzone`) == 1)) {
          stop(paste("Error! Invalid data for `viralzone`. Must be a string:", `viralzone`))
        }
        self$`viralzone` <- `viralzone`
      }
      if (!is.null(`wikipedia`)) {
        if (!(is.character(`wikipedia`) && length(`wikipedia`) == 1)) {
          stop(paste("Error! Invalid data for `wikipedia`. Must be a string:", `wikipedia`))
        }
        self$`wikipedia` <- `wikipedia`
      }
      if (!is.null(`generic_links`)) {
        stopifnot(is.vector(`generic_links`), length(`generic_links`) != 0)
        sapply(`generic_links`, function(x) stopifnot(R6::is.R6(x)))
        self$`generic_links` <- `generic_links`
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return V2TaxonomyLinksResponse as a base R list.
    #' @examples
    #' # convert array of V2TaxonomyLinksResponse (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert V2TaxonomyLinksResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2TaxonomyLinksResponseObject <- list()
      if (!is.null(self$`tax_id`)) {
        V2TaxonomyLinksResponseObject[["tax_id"]] <-
          self$`tax_id`
      }
      if (!is.null(self$`encyclopedia_of_life`)) {
        V2TaxonomyLinksResponseObject[["encyclopedia_of_life"]] <-
          self$`encyclopedia_of_life`
      }
      if (!is.null(self$`global_biodiversity_information_facility`)) {
        V2TaxonomyLinksResponseObject[["global_biodiversity_information_facility"]] <-
          self$`global_biodiversity_information_facility`
      }
      if (!is.null(self$`inaturalist`)) {
        V2TaxonomyLinksResponseObject[["inaturalist"]] <-
          self$`inaturalist`
      }
      if (!is.null(self$`viralzone`)) {
        V2TaxonomyLinksResponseObject[["viralzone"]] <-
          self$`viralzone`
      }
      if (!is.null(self$`wikipedia`)) {
        V2TaxonomyLinksResponseObject[["wikipedia"]] <-
          self$`wikipedia`
      }
      if (!is.null(self$`generic_links`)) {
        V2TaxonomyLinksResponseObject[["generic_links"]] <-
          lapply(self$`generic_links`, function(x) x$toSimpleType())
      }
      return(V2TaxonomyLinksResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyLinksResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyLinksResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`tax_id`)) {
        self$`tax_id` <- this_object$`tax_id`
      }
      if (!is.null(this_object$`encyclopedia_of_life`)) {
        self$`encyclopedia_of_life` <- this_object$`encyclopedia_of_life`
      }
      if (!is.null(this_object$`global_biodiversity_information_facility`)) {
        self$`global_biodiversity_information_facility` <- this_object$`global_biodiversity_information_facility`
      }
      if (!is.null(this_object$`inaturalist`)) {
        self$`inaturalist` <- this_object$`inaturalist`
      }
      if (!is.null(this_object$`viralzone`)) {
        self$`viralzone` <- this_object$`viralzone`
      }
      if (!is.null(this_object$`wikipedia`)) {
        self$`wikipedia` <- this_object$`wikipedia`
      }
      if (!is.null(this_object$`generic_links`)) {
        self$`generic_links` <- ApiClient$new()$deserializeObj(this_object$`generic_links`, "array[V2TaxonomyLinksResponseGenericLink]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2TaxonomyLinksResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyLinksResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyLinksResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`tax_id` <- this_object$`tax_id`
      self$`encyclopedia_of_life` <- this_object$`encyclopedia_of_life`
      self$`global_biodiversity_information_facility` <- this_object$`global_biodiversity_information_facility`
      self$`inaturalist` <- this_object$`inaturalist`
      self$`viralzone` <- this_object$`viralzone`
      self$`wikipedia` <- this_object$`wikipedia`
      self$`generic_links` <- ApiClient$new()$deserializeObj(this_object$`generic_links`, "array[V2TaxonomyLinksResponseGenericLink]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2TaxonomyLinksResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2TaxonomyLinksResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },

    #' @description
    #' Print the object
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# V2TaxonomyLinksResponse$unlock()
#
## Below is an example to define the print function
# V2TaxonomyLinksResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2TaxonomyLinksResponse$lock()

