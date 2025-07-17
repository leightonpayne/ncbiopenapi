#' Create a new V2reportsGenomeAnnotationReportMatch
#'
#' @description
#' V2reportsGenomeAnnotationReportMatch Class
#'
#' @docType class
#' @title V2reportsGenomeAnnotationReportMatch
#' @description V2reportsGenomeAnnotationReportMatch Class
#' @format An \code{R6Class} generator object
#' @field annotation  \link{V2reportsGenomeAnnotation} [optional]
#' @field query  list(character) [optional]
#' @field warning  \link{V2reportsWarning} [optional]
#' @field errors  list(\link{V2reportsError}) [optional]
#' @field row_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsGenomeAnnotationReportMatch <- R6::R6Class(
  "V2reportsGenomeAnnotationReportMatch",
  public = list(
    `annotation` = NULL,
    `query` = NULL,
    `warning` = NULL,
    `errors` = NULL,
    `row_id` = NULL,

    #' @description
    #' Initialize a new V2reportsGenomeAnnotationReportMatch class.
    #'
    #' @param annotation annotation
    #' @param query query
    #' @param warning warning
    #' @param errors errors
    #' @param row_id row_id
    #' @param ... Other optional arguments.
    initialize = function(`annotation` = NULL, `query` = NULL, `warning` = NULL, `errors` = NULL, `row_id` = NULL, ...) {
      if (!is.null(`annotation`)) {
        stopifnot(R6::is.R6(`annotation`))
        self$`annotation` <- `annotation`
      }
      if (!is.null(`query`)) {
        stopifnot(is.vector(`query`), length(`query`) != 0)
        sapply(`query`, function(x) stopifnot(is.character(x)))
        self$`query` <- `query`
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
      if (!is.null(`row_id`)) {
        if (!(is.character(`row_id`) && length(`row_id`) == 1)) {
          stop(paste("Error! Invalid data for `row_id`. Must be a string:", `row_id`))
        }
        self$`row_id` <- `row_id`
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
    #' @return V2reportsGenomeAnnotationReportMatch as a base R list.
    #' @examples
    #' # convert array of V2reportsGenomeAnnotationReportMatch (x) to a data frame
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
    #' Convert V2reportsGenomeAnnotationReportMatch to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsGenomeAnnotationReportMatchObject <- list()
      if (!is.null(self$`annotation`)) {
        V2reportsGenomeAnnotationReportMatchObject[["annotation"]] <-
          self$`annotation`$toSimpleType()
      }
      if (!is.null(self$`query`)) {
        V2reportsGenomeAnnotationReportMatchObject[["query"]] <-
          self$`query`
      }
      if (!is.null(self$`warning`)) {
        V2reportsGenomeAnnotationReportMatchObject[["warning"]] <-
          self$`warning`$toSimpleType()
      }
      if (!is.null(self$`errors`)) {
        V2reportsGenomeAnnotationReportMatchObject[["errors"]] <-
          lapply(self$`errors`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`row_id`)) {
        V2reportsGenomeAnnotationReportMatchObject[["row_id"]] <-
          self$`row_id`
      }
      return(V2reportsGenomeAnnotationReportMatchObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsGenomeAnnotationReportMatch
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsGenomeAnnotationReportMatch
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`annotation`)) {
        `annotation_object` <- V2reportsGenomeAnnotation$new()
        `annotation_object`$fromJSON(jsonlite::toJSON(this_object$`annotation`, auto_unbox = TRUE, digits = NA))
        self$`annotation` <- `annotation_object`
      }
      if (!is.null(this_object$`query`)) {
        self$`query` <- ApiClient$new()$deserializeObj(this_object$`query`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`warning`)) {
        `warning_object` <- V2reportsWarning$new()
        `warning_object`$fromJSON(jsonlite::toJSON(this_object$`warning`, auto_unbox = TRUE, digits = NA))
        self$`warning` <- `warning_object`
      }
      if (!is.null(this_object$`errors`)) {
        self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[V2reportsError]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`row_id`)) {
        self$`row_id` <- this_object$`row_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsGenomeAnnotationReportMatch in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsGenomeAnnotationReportMatch
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsGenomeAnnotationReportMatch
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`annotation` <- V2reportsGenomeAnnotation$new()$fromJSON(jsonlite::toJSON(this_object$`annotation`, auto_unbox = TRUE, digits = NA))
      self$`query` <- ApiClient$new()$deserializeObj(this_object$`query`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`warning` <- V2reportsWarning$new()$fromJSON(jsonlite::toJSON(this_object$`warning`, auto_unbox = TRUE, digits = NA))
      self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[V2reportsError]", loadNamespace("ncbiopenapi"))
      self$`row_id` <- this_object$`row_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsGenomeAnnotationReportMatch and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsGenomeAnnotationReportMatch
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
# V2reportsGenomeAnnotationReportMatch$unlock()
#
## Below is an example to define the print function
# V2reportsGenomeAnnotationReportMatch$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsGenomeAnnotationReportMatch$lock()

