#' Create a new V2VirusAvailabilityRequest
#'
#' @description
#' V2VirusAvailabilityRequest Class
#'
#' @docType class
#' @title V2VirusAvailabilityRequest
#' @description V2VirusAvailabilityRequest Class
#' @format An \code{R6Class} generator object
#' @field accessions  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2VirusAvailabilityRequest <- R6::R6Class(
  "V2VirusAvailabilityRequest",
  public = list(
    `accessions` = NULL,

    #' @description
    #' Initialize a new V2VirusAvailabilityRequest class.
    #'
    #' @param accessions accessions
    #' @param ... Other optional arguments.
    initialize = function(`accessions` = NULL, ...) {
      if (!is.null(`accessions`)) {
        stopifnot(is.vector(`accessions`), length(`accessions`) != 0)
        sapply(`accessions`, function(x) stopifnot(is.character(x)))
        self$`accessions` <- `accessions`
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
    #' @return V2VirusAvailabilityRequest as a base R list.
    #' @examples
    #' # convert array of V2VirusAvailabilityRequest (x) to a data frame
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
    #' Convert V2VirusAvailabilityRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2VirusAvailabilityRequestObject <- list()
      if (!is.null(self$`accessions`)) {
        V2VirusAvailabilityRequestObject[["accessions"]] <-
          self$`accessions`
      }
      return(V2VirusAvailabilityRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2VirusAvailabilityRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2VirusAvailabilityRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accessions`)) {
        self$`accessions` <- ApiClient$new()$deserializeObj(this_object$`accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2VirusAvailabilityRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2VirusAvailabilityRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2VirusAvailabilityRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accessions` <- ApiClient$new()$deserializeObj(this_object$`accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2VirusAvailabilityRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2VirusAvailabilityRequest
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
# V2VirusAvailabilityRequest$unlock()
#
## Below is an example to define the print function
# V2VirusAvailabilityRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2VirusAvailabilityRequest$lock()

