#' Create a new V2GenomeAnnotationTableSummaryReply
#'
#' @description
#' V2GenomeAnnotationTableSummaryReply Class
#'
#' @docType class
#' @title V2GenomeAnnotationTableSummaryReply
#' @description V2GenomeAnnotationTableSummaryReply Class
#' @format An \code{R6Class} generator object
#' @field accession  character [optional]
#' @field chromosomes  list(character) [optional]
#' @field gene_types  list(character) [optional]
#' @field empty_columns  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2GenomeAnnotationTableSummaryReply <- R6::R6Class(
  "V2GenomeAnnotationTableSummaryReply",
  public = list(
    `accession` = NULL,
    `chromosomes` = NULL,
    `gene_types` = NULL,
    `empty_columns` = NULL,

    #' @description
    #' Initialize a new V2GenomeAnnotationTableSummaryReply class.
    #'
    #' @param accession accession
    #' @param chromosomes chromosomes
    #' @param gene_types gene_types
    #' @param empty_columns empty_columns
    #' @param ... Other optional arguments.
    initialize = function(`accession` = NULL, `chromosomes` = NULL, `gene_types` = NULL, `empty_columns` = NULL, ...) {
      if (!is.null(`accession`)) {
        if (!(is.character(`accession`) && length(`accession`) == 1)) {
          stop(paste("Error! Invalid data for `accession`. Must be a string:", `accession`))
        }
        self$`accession` <- `accession`
      }
      if (!is.null(`chromosomes`)) {
        stopifnot(is.vector(`chromosomes`), length(`chromosomes`) != 0)
        sapply(`chromosomes`, function(x) stopifnot(is.character(x)))
        self$`chromosomes` <- `chromosomes`
      }
      if (!is.null(`gene_types`)) {
        stopifnot(is.vector(`gene_types`), length(`gene_types`) != 0)
        sapply(`gene_types`, function(x) stopifnot(is.character(x)))
        self$`gene_types` <- `gene_types`
      }
      if (!is.null(`empty_columns`)) {
        stopifnot(is.vector(`empty_columns`), length(`empty_columns`) != 0)
        sapply(`empty_columns`, function(x) stopifnot(is.character(x)))
        self$`empty_columns` <- `empty_columns`
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
    #' @return V2GenomeAnnotationTableSummaryReply as a base R list.
    #' @examples
    #' # convert array of V2GenomeAnnotationTableSummaryReply (x) to a data frame
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
    #' Convert V2GenomeAnnotationTableSummaryReply to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2GenomeAnnotationTableSummaryReplyObject <- list()
      if (!is.null(self$`accession`)) {
        V2GenomeAnnotationTableSummaryReplyObject[["accession"]] <-
          self$`accession`
      }
      if (!is.null(self$`chromosomes`)) {
        V2GenomeAnnotationTableSummaryReplyObject[["chromosomes"]] <-
          self$`chromosomes`
      }
      if (!is.null(self$`gene_types`)) {
        V2GenomeAnnotationTableSummaryReplyObject[["gene_types"]] <-
          self$`gene_types`
      }
      if (!is.null(self$`empty_columns`)) {
        V2GenomeAnnotationTableSummaryReplyObject[["empty_columns"]] <-
          self$`empty_columns`
      }
      return(V2GenomeAnnotationTableSummaryReplyObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GenomeAnnotationTableSummaryReply
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GenomeAnnotationTableSummaryReply
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accession`)) {
        self$`accession` <- this_object$`accession`
      }
      if (!is.null(this_object$`chromosomes`)) {
        self$`chromosomes` <- ApiClient$new()$deserializeObj(this_object$`chromosomes`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`gene_types`)) {
        self$`gene_types` <- ApiClient$new()$deserializeObj(this_object$`gene_types`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`empty_columns`)) {
        self$`empty_columns` <- ApiClient$new()$deserializeObj(this_object$`empty_columns`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2GenomeAnnotationTableSummaryReply in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GenomeAnnotationTableSummaryReply
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GenomeAnnotationTableSummaryReply
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accession` <- this_object$`accession`
      self$`chromosomes` <- ApiClient$new()$deserializeObj(this_object$`chromosomes`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`gene_types` <- ApiClient$new()$deserializeObj(this_object$`gene_types`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`empty_columns` <- ApiClient$new()$deserializeObj(this_object$`empty_columns`, "array[character]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2GenomeAnnotationTableSummaryReply and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2GenomeAnnotationTableSummaryReply
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
# V2GenomeAnnotationTableSummaryReply$unlock()
#
## Below is an example to define the print function
# V2GenomeAnnotationTableSummaryReply$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2GenomeAnnotationTableSummaryReply$lock()

