#' Create a new V2TaxonomyMatch
#'
#' @description
#' V2TaxonomyMatch Class
#'
#' @docType class
#' @title V2TaxonomyMatch
#' @description V2TaxonomyMatch Class
#' @format An \code{R6Class} generator object
#' @field warnings  list(\link{V2reportsWarning}) [optional]
#' @field errors  list(\link{V2reportsError}) [optional]
#' @field query  list(character) [optional]
#' @field taxonomy  \link{V2TaxonomyNode} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2TaxonomyMatch <- R6::R6Class(
  "V2TaxonomyMatch",
  public = list(
    `warnings` = NULL,
    `errors` = NULL,
    `query` = NULL,
    `taxonomy` = NULL,

    #' @description
    #' Initialize a new V2TaxonomyMatch class.
    #'
    #' @param warnings warnings
    #' @param errors errors
    #' @param query query
    #' @param taxonomy taxonomy
    #' @param ... Other optional arguments.
    initialize = function(`warnings` = NULL, `errors` = NULL, `query` = NULL, `taxonomy` = NULL, ...) {
      if (!is.null(`warnings`)) {
        stopifnot(is.vector(`warnings`), length(`warnings`) != 0)
        sapply(`warnings`, function(x) stopifnot(R6::is.R6(x)))
        self$`warnings` <- `warnings`
      }
      if (!is.null(`errors`)) {
        stopifnot(is.vector(`errors`), length(`errors`) != 0)
        sapply(`errors`, function(x) stopifnot(R6::is.R6(x)))
        self$`errors` <- `errors`
      }
      if (!is.null(`query`)) {
        stopifnot(is.vector(`query`), length(`query`) != 0)
        sapply(`query`, function(x) stopifnot(is.character(x)))
        self$`query` <- `query`
      }
      if (!is.null(`taxonomy`)) {
        stopifnot(R6::is.R6(`taxonomy`))
        self$`taxonomy` <- `taxonomy`
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
    #' @return V2TaxonomyMatch as a base R list.
    #' @examples
    #' # convert array of V2TaxonomyMatch (x) to a data frame
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
    #' Convert V2TaxonomyMatch to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2TaxonomyMatchObject <- list()
      if (!is.null(self$`warnings`)) {
        V2TaxonomyMatchObject[["warnings"]] <-
          lapply(self$`warnings`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`errors`)) {
        V2TaxonomyMatchObject[["errors"]] <-
          lapply(self$`errors`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`query`)) {
        V2TaxonomyMatchObject[["query"]] <-
          self$`query`
      }
      if (!is.null(self$`taxonomy`)) {
        V2TaxonomyMatchObject[["taxonomy"]] <-
          self$`taxonomy`$toSimpleType()
      }
      return(V2TaxonomyMatchObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyMatch
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyMatch
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`warnings`)) {
        self$`warnings` <- ApiClient$new()$deserializeObj(this_object$`warnings`, "array[V2reportsWarning]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`errors`)) {
        self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[V2reportsError]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`query`)) {
        self$`query` <- ApiClient$new()$deserializeObj(this_object$`query`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`taxonomy`)) {
        `taxonomy_object` <- V2TaxonomyNode$new()
        `taxonomy_object`$fromJSON(jsonlite::toJSON(this_object$`taxonomy`, auto_unbox = TRUE, digits = NA))
        self$`taxonomy` <- `taxonomy_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2TaxonomyMatch in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyMatch
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyMatch
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`warnings` <- ApiClient$new()$deserializeObj(this_object$`warnings`, "array[V2reportsWarning]", loadNamespace("ncbiopenapi"))
      self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[V2reportsError]", loadNamespace("ncbiopenapi"))
      self$`query` <- ApiClient$new()$deserializeObj(this_object$`query`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`taxonomy` <- V2TaxonomyNode$new()$fromJSON(jsonlite::toJSON(this_object$`taxonomy`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2TaxonomyMatch and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2TaxonomyMatch
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
# V2TaxonomyMatch$unlock()
#
## Below is an example to define the print function
# V2TaxonomyMatch$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2TaxonomyMatch$lock()

