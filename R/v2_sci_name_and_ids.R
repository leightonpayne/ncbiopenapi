#' Create a new V2SciNameAndIds
#'
#' @description
#' V2SciNameAndIds Class
#'
#' @docType class
#' @title V2SciNameAndIds
#' @description V2SciNameAndIds Class
#' @format An \code{R6Class} generator object
#' @field sci_name_and_ids  list(\link{V2SciNameAndIdsSciNameAndId}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2SciNameAndIds <- R6::R6Class(
  "V2SciNameAndIds",
  public = list(
    `sci_name_and_ids` = NULL,

    #' @description
    #' Initialize a new V2SciNameAndIds class.
    #'
    #' @param sci_name_and_ids sci_name_and_ids
    #' @param ... Other optional arguments.
    initialize = function(`sci_name_and_ids` = NULL, ...) {
      if (!is.null(`sci_name_and_ids`)) {
        stopifnot(is.vector(`sci_name_and_ids`), length(`sci_name_and_ids`) != 0)
        sapply(`sci_name_and_ids`, function(x) stopifnot(R6::is.R6(x)))
        self$`sci_name_and_ids` <- `sci_name_and_ids`
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
    #' @return V2SciNameAndIds as a base R list.
    #' @examples
    #' # convert array of V2SciNameAndIds (x) to a data frame
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
    #' Convert V2SciNameAndIds to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2SciNameAndIdsObject <- list()
      if (!is.null(self$`sci_name_and_ids`)) {
        V2SciNameAndIdsObject[["sci_name_and_ids"]] <-
          lapply(self$`sci_name_and_ids`, function(x) x$toSimpleType())
      }
      return(V2SciNameAndIdsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2SciNameAndIds
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2SciNameAndIds
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`sci_name_and_ids`)) {
        self$`sci_name_and_ids` <- ApiClient$new()$deserializeObj(this_object$`sci_name_and_ids`, "array[V2SciNameAndIdsSciNameAndId]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2SciNameAndIds in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2SciNameAndIds
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2SciNameAndIds
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`sci_name_and_ids` <- ApiClient$new()$deserializeObj(this_object$`sci_name_and_ids`, "array[V2SciNameAndIdsSciNameAndId]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2SciNameAndIds and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2SciNameAndIds
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
# V2SciNameAndIds$unlock()
#
## Below is an example to define the print function
# V2SciNameAndIds$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2SciNameAndIds$lock()

