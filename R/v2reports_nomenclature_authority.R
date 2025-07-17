#' Create a new V2reportsNomenclatureAuthority
#'
#' @description
#' V2reportsNomenclatureAuthority Class
#'
#' @docType class
#' @title V2reportsNomenclatureAuthority
#' @description V2reportsNomenclatureAuthority Class
#' @format An \code{R6Class} generator object
#' @field authority  character [optional]
#' @field identifier  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsNomenclatureAuthority <- R6::R6Class(
  "V2reportsNomenclatureAuthority",
  public = list(
    `authority` = NULL,
    `identifier` = NULL,

    #' @description
    #' Initialize a new V2reportsNomenclatureAuthority class.
    #'
    #' @param authority authority
    #' @param identifier identifier
    #' @param ... Other optional arguments.
    initialize = function(`authority` = NULL, `identifier` = NULL, ...) {
      if (!is.null(`authority`)) {
        if (!(is.character(`authority`) && length(`authority`) == 1)) {
          stop(paste("Error! Invalid data for `authority`. Must be a string:", `authority`))
        }
        self$`authority` <- `authority`
      }
      if (!is.null(`identifier`)) {
        if (!(is.character(`identifier`) && length(`identifier`) == 1)) {
          stop(paste("Error! Invalid data for `identifier`. Must be a string:", `identifier`))
        }
        self$`identifier` <- `identifier`
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
    #' @return V2reportsNomenclatureAuthority as a base R list.
    #' @examples
    #' # convert array of V2reportsNomenclatureAuthority (x) to a data frame
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
    #' Convert V2reportsNomenclatureAuthority to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsNomenclatureAuthorityObject <- list()
      if (!is.null(self$`authority`)) {
        V2reportsNomenclatureAuthorityObject[["authority"]] <-
          self$`authority`
      }
      if (!is.null(self$`identifier`)) {
        V2reportsNomenclatureAuthorityObject[["identifier"]] <-
          self$`identifier`
      }
      return(V2reportsNomenclatureAuthorityObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsNomenclatureAuthority
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsNomenclatureAuthority
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`authority`)) {
        self$`authority` <- this_object$`authority`
      }
      if (!is.null(this_object$`identifier`)) {
        self$`identifier` <- this_object$`identifier`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsNomenclatureAuthority in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsNomenclatureAuthority
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsNomenclatureAuthority
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`authority` <- this_object$`authority`
      self$`identifier` <- this_object$`identifier`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsNomenclatureAuthority and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsNomenclatureAuthority
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
# V2reportsNomenclatureAuthority$unlock()
#
## Below is an example to define the print function
# V2reportsNomenclatureAuthority$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsNomenclatureAuthority$lock()

