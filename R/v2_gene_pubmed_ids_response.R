#' Create a new V2GenePubmedIdsResponse
#'
#' @description
#' V2GenePubmedIdsResponse Class
#'
#' @docType class
#' @title V2GenePubmedIdsResponse
#' @description V2GenePubmedIdsResponse Class
#' @format An \code{R6Class} generator object
#' @field pubmedIds  list(integer) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2GenePubmedIdsResponse <- R6::R6Class(
  "V2GenePubmedIdsResponse",
  public = list(
    `pubmedIds` = NULL,

    #' @description
    #' Initialize a new V2GenePubmedIdsResponse class.
    #'
    #' @param pubmedIds pubmedIds
    #' @param ... Other optional arguments.
    initialize = function(`pubmedIds` = NULL, ...) {
      if (!is.null(`pubmedIds`)) {
        stopifnot(is.vector(`pubmedIds`), length(`pubmedIds`) != 0)
        sapply(`pubmedIds`, function(x) stopifnot(is.character(x)))
        self$`pubmedIds` <- `pubmedIds`
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
    #' @return V2GenePubmedIdsResponse as a base R list.
    #' @examples
    #' # convert array of V2GenePubmedIdsResponse (x) to a data frame
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
    #' Convert V2GenePubmedIdsResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2GenePubmedIdsResponseObject <- list()
      if (!is.null(self$`pubmedIds`)) {
        V2GenePubmedIdsResponseObject[["pubmedIds"]] <-
          self$`pubmedIds`
      }
      return(V2GenePubmedIdsResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GenePubmedIdsResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GenePubmedIdsResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`pubmedIds`)) {
        self$`pubmedIds` <- ApiClient$new()$deserializeObj(this_object$`pubmedIds`, "array[integer]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2GenePubmedIdsResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GenePubmedIdsResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GenePubmedIdsResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`pubmedIds` <- ApiClient$new()$deserializeObj(this_object$`pubmedIds`, "array[integer]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2GenePubmedIdsResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2GenePubmedIdsResponse
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
# V2GenePubmedIdsResponse$unlock()
#
## Below is an example to define the print function
# V2GenePubmedIdsResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2GenePubmedIdsResponse$lock()

