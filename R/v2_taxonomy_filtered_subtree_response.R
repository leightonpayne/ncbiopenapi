#' Create a new V2TaxonomyFilteredSubtreeResponse
#'
#' @description
#' V2TaxonomyFilteredSubtreeResponse Class
#'
#' @docType class
#' @title V2TaxonomyFilteredSubtreeResponse
#' @description V2TaxonomyFilteredSubtreeResponse Class
#' @format An \code{R6Class} generator object
#' @field root_nodes  list(integer) [optional]
#' @field edges  \link{V2TaxonomyFilteredSubtreeResponseEdgesEntry} [optional]
#' @field warnings  list(\link{V2reportsWarning}) [optional]
#' @field errors  list(\link{V2reportsError}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2TaxonomyFilteredSubtreeResponse <- R6::R6Class(
  "V2TaxonomyFilteredSubtreeResponse",
  public = list(
    `root_nodes` = NULL,
    `edges` = NULL,
    `warnings` = NULL,
    `errors` = NULL,

    #' @description
    #' Initialize a new V2TaxonomyFilteredSubtreeResponse class.
    #'
    #' @param root_nodes root_nodes
    #' @param edges edges
    #' @param warnings warnings
    #' @param errors errors
    #' @param ... Other optional arguments.
    initialize = function(`root_nodes` = NULL, `edges` = NULL, `warnings` = NULL, `errors` = NULL, ...) {
      if (!is.null(`root_nodes`)) {
        stopifnot(is.vector(`root_nodes`), length(`root_nodes`) != 0)
        sapply(`root_nodes`, function(x) stopifnot(is.character(x)))
        self$`root_nodes` <- `root_nodes`
      }
      if (!is.null(`edges`)) {
        stopifnot(R6::is.R6(`edges`))
        self$`edges` <- `edges`
      }
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
    #' @return V2TaxonomyFilteredSubtreeResponse as a base R list.
    #' @examples
    #' # convert array of V2TaxonomyFilteredSubtreeResponse (x) to a data frame
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
    #' Convert V2TaxonomyFilteredSubtreeResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2TaxonomyFilteredSubtreeResponseObject <- list()
      if (!is.null(self$`root_nodes`)) {
        V2TaxonomyFilteredSubtreeResponseObject[["root_nodes"]] <-
          self$`root_nodes`
      }
      if (!is.null(self$`edges`)) {
        V2TaxonomyFilteredSubtreeResponseObject[["edges"]] <-
          self$`edges`$toSimpleType()
      }
      if (!is.null(self$`warnings`)) {
        V2TaxonomyFilteredSubtreeResponseObject[["warnings"]] <-
          lapply(self$`warnings`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`errors`)) {
        V2TaxonomyFilteredSubtreeResponseObject[["errors"]] <-
          lapply(self$`errors`, function(x) x$toSimpleType())
      }
      return(V2TaxonomyFilteredSubtreeResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyFilteredSubtreeResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyFilteredSubtreeResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`root_nodes`)) {
        self$`root_nodes` <- ApiClient$new()$deserializeObj(this_object$`root_nodes`, "array[integer]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`edges`)) {
        `edges_object` <- V2TaxonomyFilteredSubtreeResponseEdgesEntry$new()
        `edges_object`$fromJSON(jsonlite::toJSON(this_object$`edges`, auto_unbox = TRUE, digits = NA))
        self$`edges` <- `edges_object`
      }
      if (!is.null(this_object$`warnings`)) {
        self$`warnings` <- ApiClient$new()$deserializeObj(this_object$`warnings`, "array[V2reportsWarning]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`errors`)) {
        self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[V2reportsError]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2TaxonomyFilteredSubtreeResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyFilteredSubtreeResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyFilteredSubtreeResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`root_nodes` <- ApiClient$new()$deserializeObj(this_object$`root_nodes`, "array[integer]", loadNamespace("ncbiopenapi"))
      self$`edges` <- V2TaxonomyFilteredSubtreeResponseEdgesEntry$new()$fromJSON(jsonlite::toJSON(this_object$`edges`, auto_unbox = TRUE, digits = NA))
      self$`warnings` <- ApiClient$new()$deserializeObj(this_object$`warnings`, "array[V2reportsWarning]", loadNamespace("ncbiopenapi"))
      self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[V2reportsError]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2TaxonomyFilteredSubtreeResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2TaxonomyFilteredSubtreeResponse
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
# V2TaxonomyFilteredSubtreeResponse$unlock()
#
## Below is an example to define the print function
# V2TaxonomyFilteredSubtreeResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2TaxonomyFilteredSubtreeResponse$lock()

