#' Create a new V2AssemblyCheckMHistogramRequest
#'
#' @description
#' V2AssemblyCheckMHistogramRequest Class
#'
#' @docType class
#' @title V2AssemblyCheckMHistogramRequest
#' @description V2AssemblyCheckMHistogramRequest Class
#' @format An \code{R6Class} generator object
#' @field species_taxon  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2AssemblyCheckMHistogramRequest <- R6::R6Class(
  "V2AssemblyCheckMHistogramRequest",
  public = list(
    `species_taxon` = NULL,

    #' @description
    #' Initialize a new V2AssemblyCheckMHistogramRequest class.
    #'
    #' @param species_taxon species_taxon
    #' @param ... Other optional arguments.
    initialize = function(`species_taxon` = NULL, ...) {
      if (!is.null(`species_taxon`)) {
        if (!(is.character(`species_taxon`) && length(`species_taxon`) == 1)) {
          stop(paste("Error! Invalid data for `species_taxon`. Must be a string:", `species_taxon`))
        }
        self$`species_taxon` <- `species_taxon`
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
    #' @return V2AssemblyCheckMHistogramRequest as a base R list.
    #' @examples
    #' # convert array of V2AssemblyCheckMHistogramRequest (x) to a data frame
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
    #' Convert V2AssemblyCheckMHistogramRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2AssemblyCheckMHistogramRequestObject <- list()
      if (!is.null(self$`species_taxon`)) {
        V2AssemblyCheckMHistogramRequestObject[["species_taxon"]] <-
          self$`species_taxon`
      }
      return(V2AssemblyCheckMHistogramRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2AssemblyCheckMHistogramRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2AssemblyCheckMHistogramRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`species_taxon`)) {
        self$`species_taxon` <- this_object$`species_taxon`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2AssemblyCheckMHistogramRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2AssemblyCheckMHistogramRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2AssemblyCheckMHistogramRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`species_taxon` <- this_object$`species_taxon`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2AssemblyCheckMHistogramRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2AssemblyCheckMHistogramRequest
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
# V2AssemblyCheckMHistogramRequest$unlock()
#
## Below is an example to define the print function
# V2AssemblyCheckMHistogramRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2AssemblyCheckMHistogramRequest$lock()

