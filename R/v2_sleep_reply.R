#' Create a new V2SleepReply
#'
#' @description
#' V2SleepReply Class
#'
#' @docType class
#' @title V2SleepReply
#' @description V2SleepReply Class
#' @format An \code{R6Class} generator object
#' @field reply  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2SleepReply <- R6::R6Class(
  "V2SleepReply",
  public = list(
    `reply` = NULL,

    #' @description
    #' Initialize a new V2SleepReply class.
    #'
    #' @param reply reply
    #' @param ... Other optional arguments.
    initialize = function(`reply` = NULL, ...) {
      if (!is.null(`reply`)) {
        if (!(is.character(`reply`) && length(`reply`) == 1)) {
          stop(paste("Error! Invalid data for `reply`. Must be a string:", `reply`))
        }
        self$`reply` <- `reply`
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
    #' @return V2SleepReply as a base R list.
    #' @examples
    #' # convert array of V2SleepReply (x) to a data frame
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
    #' Convert V2SleepReply to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2SleepReplyObject <- list()
      if (!is.null(self$`reply`)) {
        V2SleepReplyObject[["reply"]] <-
          self$`reply`
      }
      return(V2SleepReplyObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2SleepReply
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2SleepReply
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`reply`)) {
        self$`reply` <- this_object$`reply`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2SleepReply in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2SleepReply
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2SleepReply
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`reply` <- this_object$`reply`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2SleepReply and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2SleepReply
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
# V2SleepReply$unlock()
#
## Below is an example to define the print function
# V2SleepReply$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2SleepReply$lock()

