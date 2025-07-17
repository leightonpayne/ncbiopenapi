#' Create a new V2TaxonomyDatasetRequest
#'
#' @description
#' V2TaxonomyDatasetRequest Class
#'
#' @docType class
#' @title V2TaxonomyDatasetRequest
#' @description V2TaxonomyDatasetRequest Class
#' @format An \code{R6Class} generator object
#' @field tax_ids  list(integer) [optional]
#' @field aux_reports  list(\link{V2TaxonomyDatasetRequestTaxonomyReportType}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2TaxonomyDatasetRequest <- R6::R6Class(
  "V2TaxonomyDatasetRequest",
  public = list(
    `tax_ids` = NULL,
    `aux_reports` = NULL,

    #' @description
    #' Initialize a new V2TaxonomyDatasetRequest class.
    #'
    #' @param tax_ids tax_ids
    #' @param aux_reports aux_reports
    #' @param ... Other optional arguments.
    initialize = function(`tax_ids` = NULL, `aux_reports` = NULL, ...) {
      if (!is.null(`tax_ids`)) {
        stopifnot(is.vector(`tax_ids`), length(`tax_ids`) != 0)
        sapply(`tax_ids`, function(x) stopifnot(is.character(x)))
        self$`tax_ids` <- `tax_ids`
      }
      if (!is.null(`aux_reports`)) {
        stopifnot(is.vector(`aux_reports`), length(`aux_reports`) != 0)
        sapply(`aux_reports`, function(x) stopifnot(R6::is.R6(x)))
        self$`aux_reports` <- `aux_reports`
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
    #' @return V2TaxonomyDatasetRequest as a base R list.
    #' @examples
    #' # convert array of V2TaxonomyDatasetRequest (x) to a data frame
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
    #' Convert V2TaxonomyDatasetRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2TaxonomyDatasetRequestObject <- list()
      if (!is.null(self$`tax_ids`)) {
        V2TaxonomyDatasetRequestObject[["tax_ids"]] <-
          self$`tax_ids`
      }
      if (!is.null(self$`aux_reports`)) {
        V2TaxonomyDatasetRequestObject[["aux_reports"]] <-
          lapply(self$`aux_reports`, function(x) x$toSimpleType())
      }
      return(V2TaxonomyDatasetRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyDatasetRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyDatasetRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`tax_ids`)) {
        self$`tax_ids` <- ApiClient$new()$deserializeObj(this_object$`tax_ids`, "array[integer]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`aux_reports`)) {
        self$`aux_reports` <- ApiClient$new()$deserializeObj(this_object$`aux_reports`, "array[V2TaxonomyDatasetRequestTaxonomyReportType]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2TaxonomyDatasetRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyDatasetRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyDatasetRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`tax_ids` <- ApiClient$new()$deserializeObj(this_object$`tax_ids`, "array[integer]", loadNamespace("ncbiopenapi"))
      self$`aux_reports` <- ApiClient$new()$deserializeObj(this_object$`aux_reports`, "array[V2TaxonomyDatasetRequestTaxonomyReportType]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2TaxonomyDatasetRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2TaxonomyDatasetRequest
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
# V2TaxonomyDatasetRequest$unlock()
#
## Below is an example to define the print function
# V2TaxonomyDatasetRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2TaxonomyDatasetRequest$lock()

