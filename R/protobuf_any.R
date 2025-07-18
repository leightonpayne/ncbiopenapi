#' Create a new ProtobufAny
#'
#' @description
#' ProtobufAny Class
#'
#' @docType class
#' @title ProtobufAny
#' @description ProtobufAny Class
#' @format An \code{R6Class} generator object
#' @field type_url  character [optional]
#' @field value  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProtobufAny <- R6::R6Class(
  "ProtobufAny",
  public = list(
    `type_url` = NULL,
    `value` = NULL,

    #' @description
    #' Initialize a new ProtobufAny class.
    #'
    #' @param type_url type_url
    #' @param value value
    #' @param ... Other optional arguments.
    initialize = function(`type_url` = NULL, `value` = NULL, ...) {
      if (!is.null(`type_url`)) {
        if (!(is.character(`type_url`) && length(`type_url`) == 1)) {
          stop(paste("Error! Invalid data for `type_url`. Must be a string:", `type_url`))
        }
        self$`type_url` <- `type_url`
      }
      if (!is.null(`value`)) {
        self$`value` <- `value`
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
    #' @return ProtobufAny as a base R list.
    #' @examples
    #' # convert array of ProtobufAny (x) to a data frame
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
    #' Convert ProtobufAny to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProtobufAnyObject <- list()
      if (!is.null(self$`type_url`)) {
        ProtobufAnyObject[["type_url"]] <-
          self$`type_url`
      }
      if (!is.null(self$`value`)) {
        ProtobufAnyObject[["value"]] <-
          self$`value`
      }
      return(ProtobufAnyObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProtobufAny
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProtobufAny
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type_url`)) {
        self$`type_url` <- this_object$`type_url`
      }
      if (!is.null(this_object$`value`)) {
        self$`value` <- this_object$`value`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProtobufAny in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProtobufAny
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProtobufAny
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`type_url` <- this_object$`type_url`
      self$`value` <- this_object$`value`
      self
    },

    #' @description
    #' Validate JSON input with respect to ProtobufAny and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProtobufAny
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
# ProtobufAny$unlock()
#
## Below is an example to define the print function
# ProtobufAny$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProtobufAny$lock()

