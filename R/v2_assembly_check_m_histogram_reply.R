#' Create a new V2AssemblyCheckMHistogramReply
#'
#' @description
#' V2AssemblyCheckMHistogramReply Class
#'
#' @docType class
#' @title V2AssemblyCheckMHistogramReply
#' @description V2AssemblyCheckMHistogramReply Class
#' @format An \code{R6Class} generator object
#' @field species_taxid  integer [optional]
#' @field histogram_intervals  list(\link{V2AssemblyCheckMHistogramReplyHistogramInterval}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2AssemblyCheckMHistogramReply <- R6::R6Class(
  "V2AssemblyCheckMHistogramReply",
  public = list(
    `species_taxid` = NULL,
    `histogram_intervals` = NULL,

    #' @description
    #' Initialize a new V2AssemblyCheckMHistogramReply class.
    #'
    #' @param species_taxid species_taxid
    #' @param histogram_intervals histogram_intervals
    #' @param ... Other optional arguments.
    initialize = function(`species_taxid` = NULL, `histogram_intervals` = NULL, ...) {
      if (!is.null(`species_taxid`)) {
        if (!(is.numeric(`species_taxid`) && length(`species_taxid`) == 1)) {
          stop(paste("Error! Invalid data for `species_taxid`. Must be an integer:", `species_taxid`))
        }
        self$`species_taxid` <- `species_taxid`
      }
      if (!is.null(`histogram_intervals`)) {
        stopifnot(is.vector(`histogram_intervals`), length(`histogram_intervals`) != 0)
        sapply(`histogram_intervals`, function(x) stopifnot(R6::is.R6(x)))
        self$`histogram_intervals` <- `histogram_intervals`
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
    #' @return V2AssemblyCheckMHistogramReply as a base R list.
    #' @examples
    #' # convert array of V2AssemblyCheckMHistogramReply (x) to a data frame
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
    #' Convert V2AssemblyCheckMHistogramReply to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2AssemblyCheckMHistogramReplyObject <- list()
      if (!is.null(self$`species_taxid`)) {
        V2AssemblyCheckMHistogramReplyObject[["species_taxid"]] <-
          self$`species_taxid`
      }
      if (!is.null(self$`histogram_intervals`)) {
        V2AssemblyCheckMHistogramReplyObject[["histogram_intervals"]] <-
          lapply(self$`histogram_intervals`, function(x) x$toSimpleType())
      }
      return(V2AssemblyCheckMHistogramReplyObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2AssemblyCheckMHistogramReply
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2AssemblyCheckMHistogramReply
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`species_taxid`)) {
        self$`species_taxid` <- this_object$`species_taxid`
      }
      if (!is.null(this_object$`histogram_intervals`)) {
        self$`histogram_intervals` <- ApiClient$new()$deserializeObj(this_object$`histogram_intervals`, "array[V2AssemblyCheckMHistogramReplyHistogramInterval]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2AssemblyCheckMHistogramReply in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2AssemblyCheckMHistogramReply
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2AssemblyCheckMHistogramReply
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`species_taxid` <- this_object$`species_taxid`
      self$`histogram_intervals` <- ApiClient$new()$deserializeObj(this_object$`histogram_intervals`, "array[V2AssemblyCheckMHistogramReplyHistogramInterval]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2AssemblyCheckMHistogramReply and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2AssemblyCheckMHistogramReply
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
# V2AssemblyCheckMHistogramReply$unlock()
#
## Below is an example to define the print function
# V2AssemblyCheckMHistogramReply$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2AssemblyCheckMHistogramReply$lock()

