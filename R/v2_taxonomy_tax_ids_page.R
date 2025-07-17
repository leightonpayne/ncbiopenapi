#' Create a new V2TaxonomyTaxIdsPage
#'
#' @description
#' V2TaxonomyTaxIdsPage Class
#'
#' @docType class
#' @title V2TaxonomyTaxIdsPage
#' @description V2TaxonomyTaxIdsPage Class
#' @format An \code{R6Class} generator object
#' @field tax_ids  list(integer) [optional]
#' @field next_page_token  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2TaxonomyTaxIdsPage <- R6::R6Class(
  "V2TaxonomyTaxIdsPage",
  public = list(
    `tax_ids` = NULL,
    `next_page_token` = NULL,

    #' @description
    #' Initialize a new V2TaxonomyTaxIdsPage class.
    #'
    #' @param tax_ids tax_ids
    #' @param next_page_token next_page_token
    #' @param ... Other optional arguments.
    initialize = function(`tax_ids` = NULL, `next_page_token` = NULL, ...) {
      if (!is.null(`tax_ids`)) {
        stopifnot(is.vector(`tax_ids`), length(`tax_ids`) != 0)
        sapply(`tax_ids`, function(x) stopifnot(is.character(x)))
        self$`tax_ids` <- `tax_ids`
      }
      if (!is.null(`next_page_token`)) {
        if (!(is.character(`next_page_token`) && length(`next_page_token`) == 1)) {
          stop(paste("Error! Invalid data for `next_page_token`. Must be a string:", `next_page_token`))
        }
        self$`next_page_token` <- `next_page_token`
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
    #' @return V2TaxonomyTaxIdsPage as a base R list.
    #' @examples
    #' # convert array of V2TaxonomyTaxIdsPage (x) to a data frame
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
    #' Convert V2TaxonomyTaxIdsPage to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2TaxonomyTaxIdsPageObject <- list()
      if (!is.null(self$`tax_ids`)) {
        V2TaxonomyTaxIdsPageObject[["tax_ids"]] <-
          self$`tax_ids`
      }
      if (!is.null(self$`next_page_token`)) {
        V2TaxonomyTaxIdsPageObject[["next_page_token"]] <-
          self$`next_page_token`
      }
      return(V2TaxonomyTaxIdsPageObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyTaxIdsPage
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyTaxIdsPage
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`tax_ids`)) {
        self$`tax_ids` <- ApiClient$new()$deserializeObj(this_object$`tax_ids`, "array[integer]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`next_page_token`)) {
        self$`next_page_token` <- this_object$`next_page_token`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2TaxonomyTaxIdsPage in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyTaxIdsPage
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyTaxIdsPage
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`tax_ids` <- ApiClient$new()$deserializeObj(this_object$`tax_ids`, "array[integer]", loadNamespace("ncbiopenapi"))
      self$`next_page_token` <- this_object$`next_page_token`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2TaxonomyTaxIdsPage and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2TaxonomyTaxIdsPage
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
# V2TaxonomyTaxIdsPage$unlock()
#
## Below is an example to define the print function
# V2TaxonomyTaxIdsPage$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2TaxonomyTaxIdsPage$lock()

