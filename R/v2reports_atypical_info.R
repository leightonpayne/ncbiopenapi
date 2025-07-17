#' Create a new V2reportsAtypicalInfo
#'
#' @description
#' V2reportsAtypicalInfo Class
#'
#' @docType class
#' @title V2reportsAtypicalInfo
#' @description V2reportsAtypicalInfo Class
#' @format An \code{R6Class} generator object
#' @field is_atypical  character [optional]
#' @field warnings  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsAtypicalInfo <- R6::R6Class(
  "V2reportsAtypicalInfo",
  public = list(
    `is_atypical` = NULL,
    `warnings` = NULL,

    #' @description
    #' Initialize a new V2reportsAtypicalInfo class.
    #'
    #' @param is_atypical is_atypical
    #' @param warnings warnings
    #' @param ... Other optional arguments.
    initialize = function(`is_atypical` = NULL, `warnings` = NULL, ...) {
      if (!is.null(`is_atypical`)) {
        if (!(is.logical(`is_atypical`) && length(`is_atypical`) == 1)) {
          stop(paste("Error! Invalid data for `is_atypical`. Must be a boolean:", `is_atypical`))
        }
        self$`is_atypical` <- `is_atypical`
      }
      if (!is.null(`warnings`)) {
        stopifnot(is.vector(`warnings`), length(`warnings`) != 0)
        sapply(`warnings`, function(x) stopifnot(is.character(x)))
        self$`warnings` <- `warnings`
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
    #' @return V2reportsAtypicalInfo as a base R list.
    #' @examples
    #' # convert array of V2reportsAtypicalInfo (x) to a data frame
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
    #' Convert V2reportsAtypicalInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsAtypicalInfoObject <- list()
      if (!is.null(self$`is_atypical`)) {
        V2reportsAtypicalInfoObject[["is_atypical"]] <-
          self$`is_atypical`
      }
      if (!is.null(self$`warnings`)) {
        V2reportsAtypicalInfoObject[["warnings"]] <-
          self$`warnings`
      }
      return(V2reportsAtypicalInfoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsAtypicalInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsAtypicalInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`is_atypical`)) {
        self$`is_atypical` <- this_object$`is_atypical`
      }
      if (!is.null(this_object$`warnings`)) {
        self$`warnings` <- ApiClient$new()$deserializeObj(this_object$`warnings`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsAtypicalInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsAtypicalInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsAtypicalInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`is_atypical` <- this_object$`is_atypical`
      self$`warnings` <- ApiClient$new()$deserializeObj(this_object$`warnings`, "array[character]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsAtypicalInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsAtypicalInfo
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
# V2reportsAtypicalInfo$unlock()
#
## Below is an example to define the print function
# V2reportsAtypicalInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsAtypicalInfo$lock()

