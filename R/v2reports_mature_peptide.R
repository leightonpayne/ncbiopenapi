#' Create a new V2reportsMaturePeptide
#'
#' @description
#' V2reportsMaturePeptide Class
#'
#' @docType class
#' @title V2reportsMaturePeptide
#' @description V2reportsMaturePeptide Class
#' @format An \code{R6Class} generator object
#' @field accession_version  character [optional]
#' @field name  character [optional]
#' @field length  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsMaturePeptide <- R6::R6Class(
  "V2reportsMaturePeptide",
  public = list(
    `accession_version` = NULL,
    `name` = NULL,
    `length` = NULL,

    #' @description
    #' Initialize a new V2reportsMaturePeptide class.
    #'
    #' @param accession_version accession_version
    #' @param name name
    #' @param length length
    #' @param ... Other optional arguments.
    initialize = function(`accession_version` = NULL, `name` = NULL, `length` = NULL, ...) {
      if (!is.null(`accession_version`)) {
        if (!(is.character(`accession_version`) && length(`accession_version`) == 1)) {
          stop(paste("Error! Invalid data for `accession_version`. Must be a string:", `accession_version`))
        }
        self$`accession_version` <- `accession_version`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`length`)) {
        if (!(is.numeric(`length`) && length(`length`) == 1)) {
          stop(paste("Error! Invalid data for `length`. Must be an integer:", `length`))
        }
        self$`length` <- `length`
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
    #' @return V2reportsMaturePeptide as a base R list.
    #' @examples
    #' # convert array of V2reportsMaturePeptide (x) to a data frame
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
    #' Convert V2reportsMaturePeptide to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsMaturePeptideObject <- list()
      if (!is.null(self$`accession_version`)) {
        V2reportsMaturePeptideObject[["accession_version"]] <-
          self$`accession_version`
      }
      if (!is.null(self$`name`)) {
        V2reportsMaturePeptideObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`length`)) {
        V2reportsMaturePeptideObject[["length"]] <-
          self$`length`
      }
      return(V2reportsMaturePeptideObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsMaturePeptide
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsMaturePeptide
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accession_version`)) {
        self$`accession_version` <- this_object$`accession_version`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`length`)) {
        self$`length` <- this_object$`length`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsMaturePeptide in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsMaturePeptide
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsMaturePeptide
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accession_version` <- this_object$`accession_version`
      self$`name` <- this_object$`name`
      self$`length` <- this_object$`length`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsMaturePeptide and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsMaturePeptide
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
# V2reportsMaturePeptide$unlock()
#
## Below is an example to define the print function
# V2reportsMaturePeptide$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsMaturePeptide$lock()

