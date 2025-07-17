#' Create a new V2OrganismQueryRequest
#'
#' @description
#' V2OrganismQueryRequest Class
#'
#' @docType class
#' @title V2OrganismQueryRequest
#' @description V2OrganismQueryRequest Class
#' @format An \code{R6Class} generator object
#' @field organism_query  character [optional]
#' @field taxon_query  character [optional]
#' @field tax_rank_filter  \link{V2OrganismQueryRequestTaxRankFilter} [optional]
#' @field taxon_resource_filter  \link{V2OrganismQueryRequestTaxonResourceFilter} [optional]
#' @field exact_match  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2OrganismQueryRequest <- R6::R6Class(
  "V2OrganismQueryRequest",
  public = list(
    `organism_query` = NULL,
    `taxon_query` = NULL,
    `tax_rank_filter` = NULL,
    `taxon_resource_filter` = NULL,
    `exact_match` = NULL,

    #' @description
    #' Initialize a new V2OrganismQueryRequest class.
    #'
    #' @param organism_query organism_query
    #' @param taxon_query taxon_query
    #' @param tax_rank_filter tax_rank_filter
    #' @param taxon_resource_filter taxon_resource_filter
    #' @param exact_match exact_match
    #' @param ... Other optional arguments.
    initialize = function(`organism_query` = NULL, `taxon_query` = NULL, `tax_rank_filter` = NULL, `taxon_resource_filter` = NULL, `exact_match` = NULL, ...) {
      if (!is.null(`organism_query`)) {
        if (!(is.character(`organism_query`) && length(`organism_query`) == 1)) {
          stop(paste("Error! Invalid data for `organism_query`. Must be a string:", `organism_query`))
        }
        self$`organism_query` <- `organism_query`
      }
      if (!is.null(`taxon_query`)) {
        if (!(is.character(`taxon_query`) && length(`taxon_query`) == 1)) {
          stop(paste("Error! Invalid data for `taxon_query`. Must be a string:", `taxon_query`))
        }
        self$`taxon_query` <- `taxon_query`
      }
      if (!is.null(`tax_rank_filter`)) {
        if (!(`tax_rank_filter` %in% c())) {
          stop(paste("Error! \"", `tax_rank_filter`, "\" cannot be assigned to `tax_rank_filter`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`tax_rank_filter`))
        self$`tax_rank_filter` <- `tax_rank_filter`
      }
      if (!is.null(`taxon_resource_filter`)) {
        if (!(`taxon_resource_filter` %in% c())) {
          stop(paste("Error! \"", `taxon_resource_filter`, "\" cannot be assigned to `taxon_resource_filter`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`taxon_resource_filter`))
        self$`taxon_resource_filter` <- `taxon_resource_filter`
      }
      if (!is.null(`exact_match`)) {
        if (!(is.logical(`exact_match`) && length(`exact_match`) == 1)) {
          stop(paste("Error! Invalid data for `exact_match`. Must be a boolean:", `exact_match`))
        }
        self$`exact_match` <- `exact_match`
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
    #' @return V2OrganismQueryRequest as a base R list.
    #' @examples
    #' # convert array of V2OrganismQueryRequest (x) to a data frame
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
    #' Convert V2OrganismQueryRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2OrganismQueryRequestObject <- list()
      if (!is.null(self$`organism_query`)) {
        V2OrganismQueryRequestObject[["organism_query"]] <-
          self$`organism_query`
      }
      if (!is.null(self$`taxon_query`)) {
        V2OrganismQueryRequestObject[["taxon_query"]] <-
          self$`taxon_query`
      }
      if (!is.null(self$`tax_rank_filter`)) {
        V2OrganismQueryRequestObject[["tax_rank_filter"]] <-
          self$`tax_rank_filter`$toSimpleType()
      }
      if (!is.null(self$`taxon_resource_filter`)) {
        V2OrganismQueryRequestObject[["taxon_resource_filter"]] <-
          self$`taxon_resource_filter`$toSimpleType()
      }
      if (!is.null(self$`exact_match`)) {
        V2OrganismQueryRequestObject[["exact_match"]] <-
          self$`exact_match`
      }
      return(V2OrganismQueryRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2OrganismQueryRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2OrganismQueryRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`organism_query`)) {
        self$`organism_query` <- this_object$`organism_query`
      }
      if (!is.null(this_object$`taxon_query`)) {
        self$`taxon_query` <- this_object$`taxon_query`
      }
      if (!is.null(this_object$`tax_rank_filter`)) {
        `tax_rank_filter_object` <- V2OrganismQueryRequestTaxRankFilter$new()
        `tax_rank_filter_object`$fromJSON(jsonlite::toJSON(this_object$`tax_rank_filter`, auto_unbox = TRUE, digits = NA))
        self$`tax_rank_filter` <- `tax_rank_filter_object`
      }
      if (!is.null(this_object$`taxon_resource_filter`)) {
        `taxon_resource_filter_object` <- V2OrganismQueryRequestTaxonResourceFilter$new()
        `taxon_resource_filter_object`$fromJSON(jsonlite::toJSON(this_object$`taxon_resource_filter`, auto_unbox = TRUE, digits = NA))
        self$`taxon_resource_filter` <- `taxon_resource_filter_object`
      }
      if (!is.null(this_object$`exact_match`)) {
        self$`exact_match` <- this_object$`exact_match`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2OrganismQueryRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2OrganismQueryRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2OrganismQueryRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`organism_query` <- this_object$`organism_query`
      self$`taxon_query` <- this_object$`taxon_query`
      self$`tax_rank_filter` <- V2OrganismQueryRequestTaxRankFilter$new()$fromJSON(jsonlite::toJSON(this_object$`tax_rank_filter`, auto_unbox = TRUE, digits = NA))
      self$`taxon_resource_filter` <- V2OrganismQueryRequestTaxonResourceFilter$new()$fromJSON(jsonlite::toJSON(this_object$`taxon_resource_filter`, auto_unbox = TRUE, digits = NA))
      self$`exact_match` <- this_object$`exact_match`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2OrganismQueryRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2OrganismQueryRequest
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
# V2OrganismQueryRequest$unlock()
#
## Below is an example to define the print function
# V2OrganismQueryRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2OrganismQueryRequest$lock()

