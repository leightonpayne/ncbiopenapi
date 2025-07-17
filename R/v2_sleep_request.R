#' Create a new V2SleepRequest
#'
#' @description
#' V2SleepRequest Class
#'
#' @docType class
#' @title V2SleepRequest
#' @description V2SleepRequest Class
#' @format An \code{R6Class} generator object
#' @field sleep_msec  integer [optional]
#' @field error_rate  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2SleepRequest <- R6::R6Class(
  "V2SleepRequest",
  public = list(
    `sleep_msec` = NULL,
    `error_rate` = NULL,

    #' @description
    #' Initialize a new V2SleepRequest class.
    #'
    #' @param sleep_msec sleep_msec
    #' @param error_rate error_rate
    #' @param ... Other optional arguments.
    initialize = function(`sleep_msec` = NULL, `error_rate` = NULL, ...) {
      if (!is.null(`sleep_msec`)) {
        if (!(is.numeric(`sleep_msec`) && length(`sleep_msec`) == 1)) {
          stop(paste("Error! Invalid data for `sleep_msec`. Must be an integer:", `sleep_msec`))
        }
        self$`sleep_msec` <- `sleep_msec`
      }
      if (!is.null(`error_rate`)) {
        if (!(is.numeric(`error_rate`) && length(`error_rate`) == 1)) {
          stop(paste("Error! Invalid data for `error_rate`. Must be a number:", `error_rate`))
        }
        self$`error_rate` <- `error_rate`
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
    #' @return V2SleepRequest as a base R list.
    #' @examples
    #' # convert array of V2SleepRequest (x) to a data frame
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
    #' Convert V2SleepRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2SleepRequestObject <- list()
      if (!is.null(self$`sleep_msec`)) {
        V2SleepRequestObject[["sleep_msec"]] <-
          self$`sleep_msec`
      }
      if (!is.null(self$`error_rate`)) {
        V2SleepRequestObject[["error_rate"]] <-
          self$`error_rate`
      }
      return(V2SleepRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2SleepRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2SleepRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`sleep_msec`)) {
        self$`sleep_msec` <- this_object$`sleep_msec`
      }
      if (!is.null(this_object$`error_rate`)) {
        self$`error_rate` <- this_object$`error_rate`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2SleepRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2SleepRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2SleepRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`sleep_msec` <- this_object$`sleep_msec`
      self$`error_rate` <- this_object$`error_rate`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2SleepRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2SleepRequest
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
# V2SleepRequest$unlock()
#
## Below is an example to define the print function
# V2SleepRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2SleepRequest$lock()

