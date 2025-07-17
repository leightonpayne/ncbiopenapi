#' Create a new V2archiveAffiliation
#'
#' @description
#' V2archiveAffiliation Class
#'
#' @docType class
#' @title V2archiveAffiliation
#' @description V2archiveAffiliation Class
#' @format An \code{R6Class} generator object
#' @field affiliation  character [optional]
#' @field division  character [optional]
#' @field location  \link{V2archiveLocation} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2archiveAffiliation <- R6::R6Class(
  "V2archiveAffiliation",
  public = list(
    `affiliation` = NULL,
    `division` = NULL,
    `location` = NULL,

    #' @description
    #' Initialize a new V2archiveAffiliation class.
    #'
    #' @param affiliation affiliation
    #' @param division division
    #' @param location location
    #' @param ... Other optional arguments.
    initialize = function(`affiliation` = NULL, `division` = NULL, `location` = NULL, ...) {
      if (!is.null(`affiliation`)) {
        if (!(is.character(`affiliation`) && length(`affiliation`) == 1)) {
          stop(paste("Error! Invalid data for `affiliation`. Must be a string:", `affiliation`))
        }
        self$`affiliation` <- `affiliation`
      }
      if (!is.null(`division`)) {
        if (!(is.character(`division`) && length(`division`) == 1)) {
          stop(paste("Error! Invalid data for `division`. Must be a string:", `division`))
        }
        self$`division` <- `division`
      }
      if (!is.null(`location`)) {
        stopifnot(R6::is.R6(`location`))
        self$`location` <- `location`
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
    #' @return V2archiveAffiliation as a base R list.
    #' @examples
    #' # convert array of V2archiveAffiliation (x) to a data frame
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
    #' Convert V2archiveAffiliation to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2archiveAffiliationObject <- list()
      if (!is.null(self$`affiliation`)) {
        V2archiveAffiliationObject[["affiliation"]] <-
          self$`affiliation`
      }
      if (!is.null(self$`division`)) {
        V2archiveAffiliationObject[["division"]] <-
          self$`division`
      }
      if (!is.null(self$`location`)) {
        V2archiveAffiliationObject[["location"]] <-
          self$`location`$toSimpleType()
      }
      return(V2archiveAffiliationObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2archiveAffiliation
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2archiveAffiliation
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`affiliation`)) {
        self$`affiliation` <- this_object$`affiliation`
      }
      if (!is.null(this_object$`division`)) {
        self$`division` <- this_object$`division`
      }
      if (!is.null(this_object$`location`)) {
        `location_object` <- V2archiveLocation$new()
        `location_object`$fromJSON(jsonlite::toJSON(this_object$`location`, auto_unbox = TRUE, digits = NA))
        self$`location` <- `location_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2archiveAffiliation in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2archiveAffiliation
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2archiveAffiliation
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`affiliation` <- this_object$`affiliation`
      self$`division` <- this_object$`division`
      self$`location` <- V2archiveLocation$new()$fromJSON(jsonlite::toJSON(this_object$`location`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2archiveAffiliation and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2archiveAffiliation
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
# V2archiveAffiliation$unlock()
#
## Below is an example to define the print function
# V2archiveAffiliation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2archiveAffiliation$lock()

