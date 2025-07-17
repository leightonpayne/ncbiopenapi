#' Create a new RpcStatus
#'
#' @description
#' RpcStatus Class
#'
#' @docType class
#' @title RpcStatus
#' @description RpcStatus Class
#' @format An \code{R6Class} generator object
#' @field code  integer [optional]
#' @field message  character [optional]
#' @field details  list(\link{ProtobufAny}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RpcStatus <- R6::R6Class(
  "RpcStatus",
  public = list(
    `code` = NULL,
    `message` = NULL,
    `details` = NULL,

    #' @description
    #' Initialize a new RpcStatus class.
    #'
    #' @param code code
    #' @param message message
    #' @param details details
    #' @param ... Other optional arguments.
    initialize = function(`code` = NULL, `message` = NULL, `details` = NULL, ...) {
      if (!is.null(`code`)) {
        if (!(is.numeric(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be an integer:", `code`))
        }
        self$`code` <- `code`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`details`)) {
        stopifnot(is.vector(`details`), length(`details`) != 0)
        sapply(`details`, function(x) stopifnot(R6::is.R6(x)))
        self$`details` <- `details`
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
    #' @return RpcStatus as a base R list.
    #' @examples
    #' # convert array of RpcStatus (x) to a data frame
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
    #' Convert RpcStatus to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      RpcStatusObject <- list()
      if (!is.null(self$`code`)) {
        RpcStatusObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`message`)) {
        RpcStatusObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`details`)) {
        RpcStatusObject[["details"]] <-
          lapply(self$`details`, function(x) x$toSimpleType())
      }
      return(RpcStatusObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of RpcStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of RpcStatus
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`details`)) {
        self$`details` <- ApiClient$new()$deserializeObj(this_object$`details`, "array[ProtobufAny]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return RpcStatus in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of RpcStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of RpcStatus
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`code` <- this_object$`code`
      self$`message` <- this_object$`message`
      self$`details` <- ApiClient$new()$deserializeObj(this_object$`details`, "array[ProtobufAny]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to RpcStatus and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of RpcStatus
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
# RpcStatus$unlock()
#
## Below is an example to define the print function
# RpcStatus$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# RpcStatus$lock()

