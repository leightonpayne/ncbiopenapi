#' Create a new V2reportsBioSampleId
#'
#' @description
#' V2reportsBioSampleId Class
#'
#' @docType class
#' @title V2reportsBioSampleId
#' @description V2reportsBioSampleId Class
#' @format An \code{R6Class} generator object
#' @field db  character [optional]
#' @field label  character [optional]
#' @field value  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsBioSampleId <- R6::R6Class(
  "V2reportsBioSampleId",
  public = list(
    `db` = NULL,
    `label` = NULL,
    `value` = NULL,

    #' @description
    #' Initialize a new V2reportsBioSampleId class.
    #'
    #' @param db db
    #' @param label label
    #' @param value value
    #' @param ... Other optional arguments.
    initialize = function(`db` = NULL, `label` = NULL, `value` = NULL, ...) {
      if (!is.null(`db`)) {
        if (!(is.character(`db`) && length(`db`) == 1)) {
          stop(paste("Error! Invalid data for `db`. Must be a string:", `db`))
        }
        self$`db` <- `db`
      }
      if (!is.null(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!is.null(`value`)) {
        if (!(is.character(`value`) && length(`value`) == 1)) {
          stop(paste("Error! Invalid data for `value`. Must be a string:", `value`))
        }
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
    #' @return V2reportsBioSampleId as a base R list.
    #' @examples
    #' # convert array of V2reportsBioSampleId (x) to a data frame
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
    #' Convert V2reportsBioSampleId to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsBioSampleIdObject <- list()
      if (!is.null(self$`db`)) {
        V2reportsBioSampleIdObject[["db"]] <-
          self$`db`
      }
      if (!is.null(self$`label`)) {
        V2reportsBioSampleIdObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`value`)) {
        V2reportsBioSampleIdObject[["value"]] <-
          self$`value`
      }
      return(V2reportsBioSampleIdObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsBioSampleId
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsBioSampleId
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`db`)) {
        self$`db` <- this_object$`db`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
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
    #' @return V2reportsBioSampleId in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsBioSampleId
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsBioSampleId
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`db` <- this_object$`db`
      self$`label` <- this_object$`label`
      self$`value` <- this_object$`value`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsBioSampleId and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsBioSampleId
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
# V2reportsBioSampleId$unlock()
#
## Below is an example to define the print function
# V2reportsBioSampleId$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsBioSampleId$lock()

