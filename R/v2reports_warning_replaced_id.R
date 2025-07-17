#' Create a new V2reportsWarningReplacedId
#'
#' @description
#' V2reportsWarningReplacedId Class
#'
#' @docType class
#' @title V2reportsWarningReplacedId
#' @description V2reportsWarningReplacedId Class
#' @format An \code{R6Class} generator object
#' @field requested  character [optional]
#' @field returned  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsWarningReplacedId <- R6::R6Class(
  "V2reportsWarningReplacedId",
  public = list(
    `requested` = NULL,
    `returned` = NULL,

    #' @description
    #' Initialize a new V2reportsWarningReplacedId class.
    #'
    #' @param requested requested
    #' @param returned returned
    #' @param ... Other optional arguments.
    initialize = function(`requested` = NULL, `returned` = NULL, ...) {
      if (!is.null(`requested`)) {
        if (!(is.character(`requested`) && length(`requested`) == 1)) {
          stop(paste("Error! Invalid data for `requested`. Must be a string:", `requested`))
        }
        self$`requested` <- `requested`
      }
      if (!is.null(`returned`)) {
        if (!(is.character(`returned`) && length(`returned`) == 1)) {
          stop(paste("Error! Invalid data for `returned`. Must be a string:", `returned`))
        }
        self$`returned` <- `returned`
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
    #' @return V2reportsWarningReplacedId as a base R list.
    #' @examples
    #' # convert array of V2reportsWarningReplacedId (x) to a data frame
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
    #' Convert V2reportsWarningReplacedId to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsWarningReplacedIdObject <- list()
      if (!is.null(self$`requested`)) {
        V2reportsWarningReplacedIdObject[["requested"]] <-
          self$`requested`
      }
      if (!is.null(self$`returned`)) {
        V2reportsWarningReplacedIdObject[["returned"]] <-
          self$`returned`
      }
      return(V2reportsWarningReplacedIdObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsWarningReplacedId
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsWarningReplacedId
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`requested`)) {
        self$`requested` <- this_object$`requested`
      }
      if (!is.null(this_object$`returned`)) {
        self$`returned` <- this_object$`returned`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsWarningReplacedId in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsWarningReplacedId
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsWarningReplacedId
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`requested` <- this_object$`requested`
      self$`returned` <- this_object$`returned`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsWarningReplacedId and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsWarningReplacedId
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
# V2reportsWarningReplacedId$unlock()
#
## Below is an example to define the print function
# V2reportsWarningReplacedId$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsWarningReplacedId$lock()

