#' Create a new V2GeneDatasetRequest
#'
#' @description
#' V2GeneDatasetRequest Class
#'
#' @docType class
#' @title V2GeneDatasetRequest
#' @description V2GeneDatasetRequest Class
#' @format An \code{R6Class} generator object
#' @field gene_ids  list(integer) [optional]
#' @field include_annotation_type  list(\link{V2Fasta}) [optional]
#' @field returned_content  \link{V2GeneDatasetRequestContentType} [optional]
#' @field fasta_filter  list(character) [optional]
#' @field accession_filter  list(character) [optional]
#' @field aux_report  list(\link{V2GeneDatasetRequestGeneDatasetReportType}) [optional]
#' @field tabular_reports  list(\link{V2GeneDatasetRequestGeneDatasetReportType}) [optional]
#' @field table_fields  list(character) [optional]
#' @field table_report_type  \link{V2GeneDatasetRequestGeneDatasetReportType} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2GeneDatasetRequest <- R6::R6Class(
  "V2GeneDatasetRequest",
  public = list(
    `gene_ids` = NULL,
    `include_annotation_type` = NULL,
    `returned_content` = NULL,
    `fasta_filter` = NULL,
    `accession_filter` = NULL,
    `aux_report` = NULL,
    `tabular_reports` = NULL,
    `table_fields` = NULL,
    `table_report_type` = NULL,

    #' @description
    #' Initialize a new V2GeneDatasetRequest class.
    #'
    #' @param gene_ids gene_ids
    #' @param include_annotation_type include_annotation_type
    #' @param returned_content returned_content
    #' @param fasta_filter fasta_filter
    #' @param accession_filter accession_filter
    #' @param aux_report aux_report
    #' @param tabular_reports tabular_reports
    #' @param table_fields table_fields
    #' @param table_report_type table_report_type
    #' @param ... Other optional arguments.
    initialize = function(`gene_ids` = NULL, `include_annotation_type` = NULL, `returned_content` = NULL, `fasta_filter` = NULL, `accession_filter` = NULL, `aux_report` = NULL, `tabular_reports` = NULL, `table_fields` = NULL, `table_report_type` = NULL, ...) {
      if (!is.null(`gene_ids`)) {
        stopifnot(is.vector(`gene_ids`), length(`gene_ids`) != 0)
        sapply(`gene_ids`, function(x) stopifnot(is.character(x)))
        self$`gene_ids` <- `gene_ids`
      }
      if (!is.null(`include_annotation_type`)) {
        stopifnot(is.vector(`include_annotation_type`), length(`include_annotation_type`) != 0)
        sapply(`include_annotation_type`, function(x) stopifnot(R6::is.R6(x)))
        self$`include_annotation_type` <- `include_annotation_type`
      }
      if (!is.null(`returned_content`)) {
        if (!(`returned_content` %in% c())) {
          stop(paste("Error! \"", `returned_content`, "\" cannot be assigned to `returned_content`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`returned_content`))
        self$`returned_content` <- `returned_content`
      }
      if (!is.null(`fasta_filter`)) {
        stopifnot(is.vector(`fasta_filter`), length(`fasta_filter`) != 0)
        sapply(`fasta_filter`, function(x) stopifnot(is.character(x)))
        self$`fasta_filter` <- `fasta_filter`
      }
      if (!is.null(`accession_filter`)) {
        stopifnot(is.vector(`accession_filter`), length(`accession_filter`) != 0)
        sapply(`accession_filter`, function(x) stopifnot(is.character(x)))
        self$`accession_filter` <- `accession_filter`
      }
      if (!is.null(`aux_report`)) {
        stopifnot(is.vector(`aux_report`), length(`aux_report`) != 0)
        sapply(`aux_report`, function(x) stopifnot(R6::is.R6(x)))
        self$`aux_report` <- `aux_report`
      }
      if (!is.null(`tabular_reports`)) {
        stopifnot(is.vector(`tabular_reports`), length(`tabular_reports`) != 0)
        sapply(`tabular_reports`, function(x) stopifnot(R6::is.R6(x)))
        self$`tabular_reports` <- `tabular_reports`
      }
      if (!is.null(`table_fields`)) {
        stopifnot(is.vector(`table_fields`), length(`table_fields`) != 0)
        sapply(`table_fields`, function(x) stopifnot(is.character(x)))
        self$`table_fields` <- `table_fields`
      }
      if (!is.null(`table_report_type`)) {
        if (!(`table_report_type` %in% c())) {
          stop(paste("Error! \"", `table_report_type`, "\" cannot be assigned to `table_report_type`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`table_report_type`))
        self$`table_report_type` <- `table_report_type`
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
    #' @return V2GeneDatasetRequest as a base R list.
    #' @examples
    #' # convert array of V2GeneDatasetRequest (x) to a data frame
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
    #' Convert V2GeneDatasetRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2GeneDatasetRequestObject <- list()
      if (!is.null(self$`gene_ids`)) {
        V2GeneDatasetRequestObject[["gene_ids"]] <-
          self$`gene_ids`
      }
      if (!is.null(self$`include_annotation_type`)) {
        V2GeneDatasetRequestObject[["include_annotation_type"]] <-
          lapply(self$`include_annotation_type`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`returned_content`)) {
        V2GeneDatasetRequestObject[["returned_content"]] <-
          self$`returned_content`$toSimpleType()
      }
      if (!is.null(self$`fasta_filter`)) {
        V2GeneDatasetRequestObject[["fasta_filter"]] <-
          self$`fasta_filter`
      }
      if (!is.null(self$`accession_filter`)) {
        V2GeneDatasetRequestObject[["accession_filter"]] <-
          self$`accession_filter`
      }
      if (!is.null(self$`aux_report`)) {
        V2GeneDatasetRequestObject[["aux_report"]] <-
          lapply(self$`aux_report`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`tabular_reports`)) {
        V2GeneDatasetRequestObject[["tabular_reports"]] <-
          lapply(self$`tabular_reports`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`table_fields`)) {
        V2GeneDatasetRequestObject[["table_fields"]] <-
          self$`table_fields`
      }
      if (!is.null(self$`table_report_type`)) {
        V2GeneDatasetRequestObject[["table_report_type"]] <-
          self$`table_report_type`$toSimpleType()
      }
      return(V2GeneDatasetRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GeneDatasetRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GeneDatasetRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gene_ids`)) {
        self$`gene_ids` <- ApiClient$new()$deserializeObj(this_object$`gene_ids`, "array[integer]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`include_annotation_type`)) {
        self$`include_annotation_type` <- ApiClient$new()$deserializeObj(this_object$`include_annotation_type`, "array[V2Fasta]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`returned_content`)) {
        `returned_content_object` <- V2GeneDatasetRequestContentType$new()
        `returned_content_object`$fromJSON(jsonlite::toJSON(this_object$`returned_content`, auto_unbox = TRUE, digits = NA))
        self$`returned_content` <- `returned_content_object`
      }
      if (!is.null(this_object$`fasta_filter`)) {
        self$`fasta_filter` <- ApiClient$new()$deserializeObj(this_object$`fasta_filter`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`accession_filter`)) {
        self$`accession_filter` <- ApiClient$new()$deserializeObj(this_object$`accession_filter`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`aux_report`)) {
        self$`aux_report` <- ApiClient$new()$deserializeObj(this_object$`aux_report`, "array[V2GeneDatasetRequestGeneDatasetReportType]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`tabular_reports`)) {
        self$`tabular_reports` <- ApiClient$new()$deserializeObj(this_object$`tabular_reports`, "array[V2GeneDatasetRequestGeneDatasetReportType]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`table_fields`)) {
        self$`table_fields` <- ApiClient$new()$deserializeObj(this_object$`table_fields`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`table_report_type`)) {
        `table_report_type_object` <- V2GeneDatasetRequestGeneDatasetReportType$new()
        `table_report_type_object`$fromJSON(jsonlite::toJSON(this_object$`table_report_type`, auto_unbox = TRUE, digits = NA))
        self$`table_report_type` <- `table_report_type_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2GeneDatasetRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GeneDatasetRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GeneDatasetRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gene_ids` <- ApiClient$new()$deserializeObj(this_object$`gene_ids`, "array[integer]", loadNamespace("ncbiopenapi"))
      self$`include_annotation_type` <- ApiClient$new()$deserializeObj(this_object$`include_annotation_type`, "array[V2Fasta]", loadNamespace("ncbiopenapi"))
      self$`returned_content` <- V2GeneDatasetRequestContentType$new()$fromJSON(jsonlite::toJSON(this_object$`returned_content`, auto_unbox = TRUE, digits = NA))
      self$`fasta_filter` <- ApiClient$new()$deserializeObj(this_object$`fasta_filter`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`accession_filter` <- ApiClient$new()$deserializeObj(this_object$`accession_filter`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`aux_report` <- ApiClient$new()$deserializeObj(this_object$`aux_report`, "array[V2GeneDatasetRequestGeneDatasetReportType]", loadNamespace("ncbiopenapi"))
      self$`tabular_reports` <- ApiClient$new()$deserializeObj(this_object$`tabular_reports`, "array[V2GeneDatasetRequestGeneDatasetReportType]", loadNamespace("ncbiopenapi"))
      self$`table_fields` <- ApiClient$new()$deserializeObj(this_object$`table_fields`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`table_report_type` <- V2GeneDatasetRequestGeneDatasetReportType$new()$fromJSON(jsonlite::toJSON(this_object$`table_report_type`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2GeneDatasetRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2GeneDatasetRequest
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
# V2GeneDatasetRequest$unlock()
#
## Below is an example to define the print function
# V2GeneDatasetRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2GeneDatasetRequest$lock()

