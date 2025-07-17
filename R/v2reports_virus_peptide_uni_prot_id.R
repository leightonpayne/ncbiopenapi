#' Create a new V2reportsVirusPeptideUniProtId
#'
#' @description
#' V2reportsVirusPeptideUniProtId Class
#'
#' @docType class
#' @title V2reportsVirusPeptideUniProtId
#' @description V2reportsVirusPeptideUniProtId Class
#' @format An \code{R6Class} generator object
#' @field id  character [optional]
#' @field name  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsVirusPeptideUniProtId <- R6::R6Class(
  "V2reportsVirusPeptideUniProtId",
  public = list(
    `id` = NULL,
    `name` = NULL,

    #' @description
    #' Initialize a new V2reportsVirusPeptideUniProtId class.
    #'
    #' @param id id
    #' @param name name
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `name` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
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
    #' @return V2reportsVirusPeptideUniProtId as a base R list.
    #' @examples
    #' # convert array of V2reportsVirusPeptideUniProtId (x) to a data frame
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
    #' Convert V2reportsVirusPeptideUniProtId to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsVirusPeptideUniProtIdObject <- list()
      if (!is.null(self$`id`)) {
        V2reportsVirusPeptideUniProtIdObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        V2reportsVirusPeptideUniProtIdObject[["name"]] <-
          self$`name`
      }
      return(V2reportsVirusPeptideUniProtIdObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsVirusPeptideUniProtId
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsVirusPeptideUniProtId
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsVirusPeptideUniProtId in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsVirusPeptideUniProtId
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsVirusPeptideUniProtId
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsVirusPeptideUniProtId and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsVirusPeptideUniProtId
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
# V2reportsVirusPeptideUniProtId$unlock()
#
## Below is an example to define the print function
# V2reportsVirusPeptideUniProtId$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsVirusPeptideUniProtId$lock()

