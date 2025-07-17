#' Create a new V2archiveModifier
#'
#' @description
#' V2archiveModifier Class
#'
#' @docType class
#' @title V2archiveModifier
#' @description V2archiveModifier Class
#' @format An \code{R6Class} generator object
#' @field subtype  \link{V2archiveTaxonomySubtype} [optional]
#' @field subname  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2archiveModifier <- R6::R6Class(
  "V2archiveModifier",
  public = list(
    `subtype` = NULL,
    `subname` = NULL,

    #' @description
    #' Initialize a new V2archiveModifier class.
    #'
    #' @param subtype subtype
    #' @param subname subname
    #' @param ... Other optional arguments.
    initialize = function(`subtype` = NULL, `subname` = NULL, ...) {
      if (!is.null(`subtype`)) {
        if (!(`subtype` %in% c())) {
          stop(paste("Error! \"", `subtype`, "\" cannot be assigned to `subtype`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`subtype`))
        self$`subtype` <- `subtype`
      }
      if (!is.null(`subname`)) {
        if (!(is.character(`subname`) && length(`subname`) == 1)) {
          stop(paste("Error! Invalid data for `subname`. Must be a string:", `subname`))
        }
        self$`subname` <- `subname`
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
    #' @return V2archiveModifier as a base R list.
    #' @examples
    #' # convert array of V2archiveModifier (x) to a data frame
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
    #' Convert V2archiveModifier to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2archiveModifierObject <- list()
      if (!is.null(self$`subtype`)) {
        V2archiveModifierObject[["subtype"]] <-
          self$`subtype`$toSimpleType()
      }
      if (!is.null(self$`subname`)) {
        V2archiveModifierObject[["subname"]] <-
          self$`subname`
      }
      return(V2archiveModifierObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2archiveModifier
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2archiveModifier
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`subtype`)) {
        `subtype_object` <- V2archiveTaxonomySubtype$new()
        `subtype_object`$fromJSON(jsonlite::toJSON(this_object$`subtype`, auto_unbox = TRUE, digits = NA))
        self$`subtype` <- `subtype_object`
      }
      if (!is.null(this_object$`subname`)) {
        self$`subname` <- this_object$`subname`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2archiveModifier in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2archiveModifier
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2archiveModifier
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`subtype` <- V2archiveTaxonomySubtype$new()$fromJSON(jsonlite::toJSON(this_object$`subtype`, auto_unbox = TRUE, digits = NA))
      self$`subname` <- this_object$`subname`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2archiveModifier and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2archiveModifier
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
# V2archiveModifier$unlock()
#
## Below is an example to define the print function
# V2archiveModifier$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2archiveModifier$lock()

