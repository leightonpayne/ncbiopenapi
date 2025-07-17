#' Create a new V2reportsConservedDomain
#'
#' @description
#' V2reportsConservedDomain Class
#'
#' @docType class
#' @title V2reportsConservedDomain
#' @description V2reportsConservedDomain Class
#' @format An \code{R6Class} generator object
#' @field accession  character [optional]
#' @field name  character [optional]
#' @field range  \link{V2reportsRange} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsConservedDomain <- R6::R6Class(
  "V2reportsConservedDomain",
  public = list(
    `accession` = NULL,
    `name` = NULL,
    `range` = NULL,

    #' @description
    #' Initialize a new V2reportsConservedDomain class.
    #'
    #' @param accession accession
    #' @param name name
    #' @param range range
    #' @param ... Other optional arguments.
    initialize = function(`accession` = NULL, `name` = NULL, `range` = NULL, ...) {
      if (!is.null(`accession`)) {
        if (!(is.character(`accession`) && length(`accession`) == 1)) {
          stop(paste("Error! Invalid data for `accession`. Must be a string:", `accession`))
        }
        self$`accession` <- `accession`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`range`)) {
        stopifnot(R6::is.R6(`range`))
        self$`range` <- `range`
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
    #' @return V2reportsConservedDomain as a base R list.
    #' @examples
    #' # convert array of V2reportsConservedDomain (x) to a data frame
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
    #' Convert V2reportsConservedDomain to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsConservedDomainObject <- list()
      if (!is.null(self$`accession`)) {
        V2reportsConservedDomainObject[["accession"]] <-
          self$`accession`
      }
      if (!is.null(self$`name`)) {
        V2reportsConservedDomainObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`range`)) {
        V2reportsConservedDomainObject[["range"]] <-
          self$`range`$toSimpleType()
      }
      return(V2reportsConservedDomainObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsConservedDomain
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsConservedDomain
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accession`)) {
        self$`accession` <- this_object$`accession`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`range`)) {
        `range_object` <- V2reportsRange$new()
        `range_object`$fromJSON(jsonlite::toJSON(this_object$`range`, auto_unbox = TRUE, digits = NA))
        self$`range` <- `range_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsConservedDomain in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsConservedDomain
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsConservedDomain
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accession` <- this_object$`accession`
      self$`name` <- this_object$`name`
      self$`range` <- V2reportsRange$new()$fromJSON(jsonlite::toJSON(this_object$`range`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsConservedDomain and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsConservedDomain
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
# V2reportsConservedDomain$unlock()
#
## Below is an example to define the print function
# V2reportsConservedDomain$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsConservedDomain$lock()

