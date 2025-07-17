#' Create a new V2DownloadSummaryFileSummary
#'
#' @description
#' V2DownloadSummaryFileSummary Class
#'
#' @docType class
#' @title V2DownloadSummaryFileSummary
#' @description V2DownloadSummaryFileSummary Class
#' @format An \code{R6Class} generator object
#' @field file_count  integer [optional]
#' @field size_mb  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2DownloadSummaryFileSummary <- R6::R6Class(
  "V2DownloadSummaryFileSummary",
  public = list(
    `file_count` = NULL,
    `size_mb` = NULL,

    #' @description
    #' Initialize a new V2DownloadSummaryFileSummary class.
    #'
    #' @param file_count file_count
    #' @param size_mb size_mb
    #' @param ... Other optional arguments.
    initialize = function(`file_count` = NULL, `size_mb` = NULL, ...) {
      if (!is.null(`file_count`)) {
        if (!(is.numeric(`file_count`) && length(`file_count`) == 1)) {
          stop(paste("Error! Invalid data for `file_count`. Must be an integer:", `file_count`))
        }
        self$`file_count` <- `file_count`
      }
      if (!is.null(`size_mb`)) {
        if (!(is.numeric(`size_mb`) && length(`size_mb`) == 1)) {
          stop(paste("Error! Invalid data for `size_mb`. Must be a number:", `size_mb`))
        }
        self$`size_mb` <- `size_mb`
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
    #' @return V2DownloadSummaryFileSummary as a base R list.
    #' @examples
    #' # convert array of V2DownloadSummaryFileSummary (x) to a data frame
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
    #' Convert V2DownloadSummaryFileSummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2DownloadSummaryFileSummaryObject <- list()
      if (!is.null(self$`file_count`)) {
        V2DownloadSummaryFileSummaryObject[["file_count"]] <-
          self$`file_count`
      }
      if (!is.null(self$`size_mb`)) {
        V2DownloadSummaryFileSummaryObject[["size_mb"]] <-
          self$`size_mb`
      }
      return(V2DownloadSummaryFileSummaryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2DownloadSummaryFileSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2DownloadSummaryFileSummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`file_count`)) {
        self$`file_count` <- this_object$`file_count`
      }
      if (!is.null(this_object$`size_mb`)) {
        self$`size_mb` <- this_object$`size_mb`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2DownloadSummaryFileSummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2DownloadSummaryFileSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2DownloadSummaryFileSummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`file_count` <- this_object$`file_count`
      self$`size_mb` <- this_object$`size_mb`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2DownloadSummaryFileSummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2DownloadSummaryFileSummary
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
# V2DownloadSummaryFileSummary$unlock()
#
## Below is an example to define the print function
# V2DownloadSummaryFileSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2DownloadSummaryFileSummary$lock()

