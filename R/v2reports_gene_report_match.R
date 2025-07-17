#' Create a new V2reportsGeneReportMatch
#'
#' @description
#' V2reportsGeneReportMatch Class
#'
#' @docType class
#' @title V2reportsGeneReportMatch
#' @description V2reportsGeneReportMatch Class
#' @format An \code{R6Class} generator object
#' @field gene  \link{V2reportsGeneDescriptor} [optional]
#' @field product  \link{V2reportsProductDescriptor} [optional]
#' @field query  list(character) [optional]
#' @field warnings  list(\link{V2reportsWarning}) [optional]
#' @field warning  \link{V2reportsWarning} [optional]
#' @field errors  list(\link{V2reportsError}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsGeneReportMatch <- R6::R6Class(
  "V2reportsGeneReportMatch",
  public = list(
    `gene` = NULL,
    `product` = NULL,
    `query` = NULL,
    `warnings` = NULL,
    `warning` = NULL,
    `errors` = NULL,

    #' @description
    #' Initialize a new V2reportsGeneReportMatch class.
    #'
    #' @param gene gene
    #' @param product product
    #' @param query query
    #' @param warnings warnings
    #' @param warning warning
    #' @param errors errors
    #' @param ... Other optional arguments.
    initialize = function(`gene` = NULL, `product` = NULL, `query` = NULL, `warnings` = NULL, `warning` = NULL, `errors` = NULL, ...) {
      if (!is.null(`gene`)) {
        stopifnot(R6::is.R6(`gene`))
        self$`gene` <- `gene`
      }
      if (!is.null(`product`)) {
        stopifnot(R6::is.R6(`product`))
        self$`product` <- `product`
      }
      if (!is.null(`query`)) {
        stopifnot(is.vector(`query`), length(`query`) != 0)
        sapply(`query`, function(x) stopifnot(is.character(x)))
        self$`query` <- `query`
      }
      if (!is.null(`warnings`)) {
        stopifnot(is.vector(`warnings`), length(`warnings`) != 0)
        sapply(`warnings`, function(x) stopifnot(R6::is.R6(x)))
        self$`warnings` <- `warnings`
      }
      if (!is.null(`warning`)) {
        stopifnot(R6::is.R6(`warning`))
        self$`warning` <- `warning`
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
    #' @return V2reportsGeneReportMatch as a base R list.
    #' @examples
    #' # convert array of V2reportsGeneReportMatch (x) to a data frame
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
    #' Convert V2reportsGeneReportMatch to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsGeneReportMatchObject <- list()
      if (!is.null(self$`gene`)) {
        V2reportsGeneReportMatchObject[["gene"]] <-
          self$`gene`$toSimpleType()
      }
      if (!is.null(self$`product`)) {
        V2reportsGeneReportMatchObject[["product"]] <-
          self$`product`$toSimpleType()
      }
      if (!is.null(self$`query`)) {
        V2reportsGeneReportMatchObject[["query"]] <-
          self$`query`
      }
      if (!is.null(self$`warnings`)) {
        V2reportsGeneReportMatchObject[["warnings"]] <-
          lapply(self$`warnings`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`warning`)) {
        V2reportsGeneReportMatchObject[["warning"]] <-
          self$`warning`$toSimpleType()
      }
      if (!is.null(self$`errors`)) {
        V2reportsGeneReportMatchObject[["errors"]] <-
          lapply(self$`errors`, function(x) x$toSimpleType())
      }
      return(V2reportsGeneReportMatchObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsGeneReportMatch
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsGeneReportMatch
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gene`)) {
        `gene_object` <- V2reportsGeneDescriptor$new()
        `gene_object`$fromJSON(jsonlite::toJSON(this_object$`gene`, auto_unbox = TRUE, digits = NA))
        self$`gene` <- `gene_object`
      }
      if (!is.null(this_object$`product`)) {
        `product_object` <- V2reportsProductDescriptor$new()
        `product_object`$fromJSON(jsonlite::toJSON(this_object$`product`, auto_unbox = TRUE, digits = NA))
        self$`product` <- `product_object`
      }
      if (!is.null(this_object$`query`)) {
        self$`query` <- ApiClient$new()$deserializeObj(this_object$`query`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`warnings`)) {
        self$`warnings` <- ApiClient$new()$deserializeObj(this_object$`warnings`, "array[V2reportsWarning]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`warning`)) {
        `warning_object` <- V2reportsWarning$new()
        `warning_object`$fromJSON(jsonlite::toJSON(this_object$`warning`, auto_unbox = TRUE, digits = NA))
        self$`warning` <- `warning_object`
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
    #' @return V2reportsGeneReportMatch in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsGeneReportMatch
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsGeneReportMatch
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gene` <- V2reportsGeneDescriptor$new()$fromJSON(jsonlite::toJSON(this_object$`gene`, auto_unbox = TRUE, digits = NA))
      self$`product` <- V2reportsProductDescriptor$new()$fromJSON(jsonlite::toJSON(this_object$`product`, auto_unbox = TRUE, digits = NA))
      self$`query` <- ApiClient$new()$deserializeObj(this_object$`query`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`warnings` <- ApiClient$new()$deserializeObj(this_object$`warnings`, "array[V2reportsWarning]", loadNamespace("ncbiopenapi"))
      self$`warning` <- V2reportsWarning$new()$fromJSON(jsonlite::toJSON(this_object$`warning`, auto_unbox = TRUE, digits = NA))
      self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[V2reportsError]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsGeneReportMatch and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsGeneReportMatch
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
# V2reportsGeneReportMatch$unlock()
#
## Below is an example to define the print function
# V2reportsGeneReportMatch$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsGeneReportMatch$lock()

