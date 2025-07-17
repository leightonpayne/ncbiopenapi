#' Create a new V2reportsBioSampleAttribute
#'
#' @description
#' V2reportsBioSampleAttribute Class
#'
#' @docType class
#' @title V2reportsBioSampleAttribute
#' @description V2reportsBioSampleAttribute Class
#' @format An \code{R6Class} generator object
#' @field name  character [optional]
#' @field value  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsBioSampleAttribute <- R6::R6Class(
  "V2reportsBioSampleAttribute",
  public = list(
    `name` = NULL,
    `value` = NULL,

    #' @description
    #' Initialize a new V2reportsBioSampleAttribute class.
    #'
    #' @param name name
    #' @param value value
    #' @param ... Other optional arguments.
    initialize = function(`name` = NULL, `value` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
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
    #' @return V2reportsBioSampleAttribute as a base R list.
    #' @examples
    #' # convert array of V2reportsBioSampleAttribute (x) to a data frame
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
    #' Convert V2reportsBioSampleAttribute to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsBioSampleAttributeObject <- list()
      if (!is.null(self$`name`)) {
        V2reportsBioSampleAttributeObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`value`)) {
        V2reportsBioSampleAttributeObject[["value"]] <-
          self$`value`
      }
      return(V2reportsBioSampleAttributeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsBioSampleAttribute
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsBioSampleAttribute
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
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
    #' @return V2reportsBioSampleAttribute in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsBioSampleAttribute
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsBioSampleAttribute
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`value` <- this_object$`value`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsBioSampleAttribute and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsBioSampleAttribute
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
# V2reportsBioSampleAttribute$unlock()
#
## Below is an example to define the print function
# V2reportsBioSampleAttribute$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsBioSampleAttribute$lock()

