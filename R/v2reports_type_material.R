#' Create a new V2reportsTypeMaterial
#'
#' @description
#' V2reportsTypeMaterial Class
#'
#' @docType class
#' @title V2reportsTypeMaterial
#' @description V2reportsTypeMaterial Class
#' @format An \code{R6Class} generator object
#' @field type_label  character [optional]
#' @field type_display_text  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsTypeMaterial <- R6::R6Class(
  "V2reportsTypeMaterial",
  public = list(
    `type_label` = NULL,
    `type_display_text` = NULL,

    #' @description
    #' Initialize a new V2reportsTypeMaterial class.
    #'
    #' @param type_label type_label
    #' @param type_display_text type_display_text
    #' @param ... Other optional arguments.
    initialize = function(`type_label` = NULL, `type_display_text` = NULL, ...) {
      if (!is.null(`type_label`)) {
        if (!(is.character(`type_label`) && length(`type_label`) == 1)) {
          stop(paste("Error! Invalid data for `type_label`. Must be a string:", `type_label`))
        }
        self$`type_label` <- `type_label`
      }
      if (!is.null(`type_display_text`)) {
        if (!(is.character(`type_display_text`) && length(`type_display_text`) == 1)) {
          stop(paste("Error! Invalid data for `type_display_text`. Must be a string:", `type_display_text`))
        }
        self$`type_display_text` <- `type_display_text`
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
    #' @return V2reportsTypeMaterial as a base R list.
    #' @examples
    #' # convert array of V2reportsTypeMaterial (x) to a data frame
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
    #' Convert V2reportsTypeMaterial to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsTypeMaterialObject <- list()
      if (!is.null(self$`type_label`)) {
        V2reportsTypeMaterialObject[["type_label"]] <-
          self$`type_label`
      }
      if (!is.null(self$`type_display_text`)) {
        V2reportsTypeMaterialObject[["type_display_text"]] <-
          self$`type_display_text`
      }
      return(V2reportsTypeMaterialObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsTypeMaterial
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsTypeMaterial
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type_label`)) {
        self$`type_label` <- this_object$`type_label`
      }
      if (!is.null(this_object$`type_display_text`)) {
        self$`type_display_text` <- this_object$`type_display_text`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsTypeMaterial in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsTypeMaterial
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsTypeMaterial
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`type_label` <- this_object$`type_label`
      self$`type_display_text` <- this_object$`type_display_text`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsTypeMaterial and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsTypeMaterial
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
# V2reportsTypeMaterial$unlock()
#
## Below is an example to define the print function
# V2reportsTypeMaterial$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsTypeMaterial$lock()

