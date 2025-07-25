#' Create a new V2HttpBody
#'
#' @description
#' V2HttpBody Class
#'
#' @docType class
#' @title V2HttpBody
#' @description V2HttpBody Class
#' @format An \code{R6Class} generator object
#' @field content_type  character [optional]
#' @field data  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2HttpBody <- R6::R6Class(
  "V2HttpBody",
  public = list(
    `content_type` = NULL,
    `data` = NULL,

    #' @description
    #' Initialize a new V2HttpBody class.
    #'
    #' @param content_type content_type
    #' @param data data
    #' @param ... Other optional arguments.
    initialize = function(`content_type` = NULL, `data` = NULL, ...) {
      if (!is.null(`content_type`)) {
        if (!(is.character(`content_type`) && length(`content_type`) == 1)) {
          stop(paste("Error! Invalid data for `content_type`. Must be a string:", `content_type`))
        }
        self$`content_type` <- `content_type`
      }
      if (!is.null(`data`)) {
        self$`data` <- `data`
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
    #' @return V2HttpBody as a base R list.
    #' @examples
    #' # convert array of V2HttpBody (x) to a data frame
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
    #' Convert V2HttpBody to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2HttpBodyObject <- list()
      if (!is.null(self$`content_type`)) {
        V2HttpBodyObject[["content_type"]] <-
          self$`content_type`
      }
      if (!is.null(self$`data`)) {
        V2HttpBodyObject[["data"]] <-
          self$`data`
      }
      return(V2HttpBodyObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2HttpBody
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2HttpBody
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`content_type`)) {
        self$`content_type` <- this_object$`content_type`
      }
      if (!is.null(this_object$`data`)) {
        self$`data` <- this_object$`data`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2HttpBody in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2HttpBody
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2HttpBody
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`content_type` <- this_object$`content_type`
      self$`data` <- this_object$`data`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2HttpBody and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2HttpBody
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
# V2HttpBody$unlock()
#
## Below is an example to define the print function
# V2HttpBody$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2HttpBody$lock()

