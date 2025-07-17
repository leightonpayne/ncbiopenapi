#' Create a new V2TaxonomyMetadataResponse
#'
#' @description
#' V2TaxonomyMetadataResponse Class
#'
#' @docType class
#' @title V2TaxonomyMetadataResponse
#' @description V2TaxonomyMetadataResponse Class
#' @format An \code{R6Class} generator object
#' @field messages  list(\link{V2reportsMessage}) [optional]
#' @field taxonomy_nodes  list(\link{V2TaxonomyMatch}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2TaxonomyMetadataResponse <- R6::R6Class(
  "V2TaxonomyMetadataResponse",
  public = list(
    `messages` = NULL,
    `taxonomy_nodes` = NULL,

    #' @description
    #' Initialize a new V2TaxonomyMetadataResponse class.
    #'
    #' @param messages messages
    #' @param taxonomy_nodes taxonomy_nodes
    #' @param ... Other optional arguments.
    initialize = function(`messages` = NULL, `taxonomy_nodes` = NULL, ...) {
      if (!is.null(`messages`)) {
        stopifnot(is.vector(`messages`), length(`messages`) != 0)
        sapply(`messages`, function(x) stopifnot(R6::is.R6(x)))
        self$`messages` <- `messages`
      }
      if (!is.null(`taxonomy_nodes`)) {
        stopifnot(is.vector(`taxonomy_nodes`), length(`taxonomy_nodes`) != 0)
        sapply(`taxonomy_nodes`, function(x) stopifnot(R6::is.R6(x)))
        self$`taxonomy_nodes` <- `taxonomy_nodes`
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
    #' @return V2TaxonomyMetadataResponse as a base R list.
    #' @examples
    #' # convert array of V2TaxonomyMetadataResponse (x) to a data frame
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
    #' Convert V2TaxonomyMetadataResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2TaxonomyMetadataResponseObject <- list()
      if (!is.null(self$`messages`)) {
        V2TaxonomyMetadataResponseObject[["messages"]] <-
          lapply(self$`messages`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`taxonomy_nodes`)) {
        V2TaxonomyMetadataResponseObject[["taxonomy_nodes"]] <-
          lapply(self$`taxonomy_nodes`, function(x) x$toSimpleType())
      }
      return(V2TaxonomyMetadataResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyMetadataResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyMetadataResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`messages`)) {
        self$`messages` <- ApiClient$new()$deserializeObj(this_object$`messages`, "array[V2reportsMessage]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`taxonomy_nodes`)) {
        self$`taxonomy_nodes` <- ApiClient$new()$deserializeObj(this_object$`taxonomy_nodes`, "array[V2TaxonomyMatch]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2TaxonomyMetadataResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyMetadataResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyMetadataResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`messages` <- ApiClient$new()$deserializeObj(this_object$`messages`, "array[V2reportsMessage]", loadNamespace("ncbiopenapi"))
      self$`taxonomy_nodes` <- ApiClient$new()$deserializeObj(this_object$`taxonomy_nodes`, "array[V2TaxonomyMatch]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2TaxonomyMetadataResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2TaxonomyMetadataResponse
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
# V2TaxonomyMetadataResponse$unlock()
#
## Below is an example to define the print function
# V2TaxonomyMetadataResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2TaxonomyMetadataResponse$lock()

