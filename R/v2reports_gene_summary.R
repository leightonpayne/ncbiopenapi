#' Create a new V2reportsGeneSummary
#'
#' @description
#' V2reportsGeneSummary Class
#'
#' @docType class
#' @title V2reportsGeneSummary
#' @description V2reportsGeneSummary Class
#' @format An \code{R6Class} generator object
#' @field source  character [optional]
#' @field description  character [optional]
#' @field date  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsGeneSummary <- R6::R6Class(
  "V2reportsGeneSummary",
  public = list(
    `source` = NULL,
    `description` = NULL,
    `date` = NULL,

    #' @description
    #' Initialize a new V2reportsGeneSummary class.
    #'
    #' @param source source
    #' @param description description
    #' @param date date
    #' @param ... Other optional arguments.
    initialize = function(`source` = NULL, `description` = NULL, `date` = NULL, ...) {
      if (!is.null(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`date`)) {
        if (!(is.character(`date`) && length(`date`) == 1)) {
          stop(paste("Error! Invalid data for `date`. Must be a string:", `date`))
        }
        self$`date` <- `date`
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
    #' @return V2reportsGeneSummary as a base R list.
    #' @examples
    #' # convert array of V2reportsGeneSummary (x) to a data frame
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
    #' Convert V2reportsGeneSummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsGeneSummaryObject <- list()
      if (!is.null(self$`source`)) {
        V2reportsGeneSummaryObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`description`)) {
        V2reportsGeneSummaryObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`date`)) {
        V2reportsGeneSummaryObject[["date"]] <-
          self$`date`
      }
      return(V2reportsGeneSummaryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsGeneSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsGeneSummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`date`)) {
        self$`date` <- this_object$`date`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsGeneSummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsGeneSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsGeneSummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`source` <- this_object$`source`
      self$`description` <- this_object$`description`
      self$`date` <- this_object$`date`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsGeneSummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsGeneSummary
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
# V2reportsGeneSummary$unlock()
#
## Below is an example to define the print function
# V2reportsGeneSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsGeneSummary$lock()

