#' Create a new V2AssemblyLinksRequest
#'
#' @description
#' V2AssemblyLinksRequest Class
#'
#' @docType class
#' @title V2AssemblyLinksRequest
#' @description V2AssemblyLinksRequest Class
#' @format An \code{R6Class} generator object
#' @field accessions  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2AssemblyLinksRequest <- R6::R6Class(
  "V2AssemblyLinksRequest",
  public = list(
    `accessions` = NULL,

    #' @description
    #' Initialize a new V2AssemblyLinksRequest class.
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
    #' @return V2AssemblyLinksRequest as a base R list.
    #' @examples
    #' # convert array of V2AssemblyLinksRequest (x) to a data frame
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
    #' Convert V2AssemblyLinksRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2AssemblyLinksRequestObject <- list()
      if (!is.null(self$`accessions`)) {
        V2AssemblyLinksRequestObject[["accessions"]] <-
          self$`accessions`
      }
      return(V2AssemblyLinksRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2AssemblyLinksRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2AssemblyLinksRequest
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
    #' @return V2AssemblyLinksRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2AssemblyLinksRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2AssemblyLinksRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accessions` <- ApiClient$new()$deserializeObj(this_object$`accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2AssemblyLinksRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2AssemblyLinksRequest
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
# V2AssemblyLinksRequest$unlock()
#
## Below is an example to define the print function
# V2AssemblyLinksRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2AssemblyLinksRequest$lock()

