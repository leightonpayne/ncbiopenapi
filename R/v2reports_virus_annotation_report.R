#' Create a new V2reportsVirusAnnotationReport
#'
#' @description
#' V2reportsVirusAnnotationReport Class
#'
#' @docType class
#' @title V2reportsVirusAnnotationReport
#' @description V2reportsVirusAnnotationReport Class
#' @format An \code{R6Class} generator object
#' @field accession  character [optional]
#' @field isolate_name  character [optional]
#' @field genes  list(\link{V2reportsVirusGene}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsVirusAnnotationReport <- R6::R6Class(
  "V2reportsVirusAnnotationReport",
  public = list(
    `accession` = NULL,
    `isolate_name` = NULL,
    `genes` = NULL,

    #' @description
    #' Initialize a new V2reportsVirusAnnotationReport class.
    #'
    #' @param accession accession
    #' @param isolate_name isolate_name
    #' @param genes genes
    #' @param ... Other optional arguments.
    initialize = function(`accession` = NULL, `isolate_name` = NULL, `genes` = NULL, ...) {
      if (!is.null(`accession`)) {
        if (!(is.character(`accession`) && length(`accession`) == 1)) {
          stop(paste("Error! Invalid data for `accession`. Must be a string:", `accession`))
        }
        self$`accession` <- `accession`
      }
      if (!is.null(`isolate_name`)) {
        if (!(is.character(`isolate_name`) && length(`isolate_name`) == 1)) {
          stop(paste("Error! Invalid data for `isolate_name`. Must be a string:", `isolate_name`))
        }
        self$`isolate_name` <- `isolate_name`
      }
      if (!is.null(`genes`)) {
        stopifnot(is.vector(`genes`), length(`genes`) != 0)
        sapply(`genes`, function(x) stopifnot(R6::is.R6(x)))
        self$`genes` <- `genes`
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
    #' @return V2reportsVirusAnnotationReport as a base R list.
    #' @examples
    #' # convert array of V2reportsVirusAnnotationReport (x) to a data frame
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
    #' Convert V2reportsVirusAnnotationReport to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsVirusAnnotationReportObject <- list()
      if (!is.null(self$`accession`)) {
        V2reportsVirusAnnotationReportObject[["accession"]] <-
          self$`accession`
      }
      if (!is.null(self$`isolate_name`)) {
        V2reportsVirusAnnotationReportObject[["isolate_name"]] <-
          self$`isolate_name`
      }
      if (!is.null(self$`genes`)) {
        V2reportsVirusAnnotationReportObject[["genes"]] <-
          lapply(self$`genes`, function(x) x$toSimpleType())
      }
      return(V2reportsVirusAnnotationReportObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsVirusAnnotationReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsVirusAnnotationReport
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accession`)) {
        self$`accession` <- this_object$`accession`
      }
      if (!is.null(this_object$`isolate_name`)) {
        self$`isolate_name` <- this_object$`isolate_name`
      }
      if (!is.null(this_object$`genes`)) {
        self$`genes` <- ApiClient$new()$deserializeObj(this_object$`genes`, "array[V2reportsVirusGene]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsVirusAnnotationReport in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsVirusAnnotationReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsVirusAnnotationReport
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accession` <- this_object$`accession`
      self$`isolate_name` <- this_object$`isolate_name`
      self$`genes` <- ApiClient$new()$deserializeObj(this_object$`genes`, "array[V2reportsVirusGene]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsVirusAnnotationReport and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsVirusAnnotationReport
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
# V2reportsVirusAnnotationReport$unlock()
#
## Below is an example to define the print function
# V2reportsVirusAnnotationReport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsVirusAnnotationReport$lock()

