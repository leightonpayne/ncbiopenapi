#' Create a new V2DownloadSummaryAvailableFiles
#'
#' @description
#' V2DownloadSummaryAvailableFiles Class
#'
#' @docType class
#' @title V2DownloadSummaryAvailableFiles
#' @description V2DownloadSummaryAvailableFiles Class
#' @format An \code{R6Class} generator object
#' @field all_genomic_fasta  \link{V2DownloadSummaryFileSummary} [optional]
#' @field genome_gff  \link{V2DownloadSummaryFileSummary} [optional]
#' @field genome_gbff  \link{V2DownloadSummaryFileSummary} [optional]
#' @field rna_fasta  \link{V2DownloadSummaryFileSummary} [optional]
#' @field prot_fasta  \link{V2DownloadSummaryFileSummary} [optional]
#' @field genome_gtf  \link{V2DownloadSummaryFileSummary} [optional]
#' @field cds_fasta  \link{V2DownloadSummaryFileSummary} [optional]
#' @field sequence_report  \link{V2DownloadSummaryFileSummary} [optional]
#' @field annotation_report  \link{V2DownloadSummaryFileSummary} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2DownloadSummaryAvailableFiles <- R6::R6Class(
  "V2DownloadSummaryAvailableFiles",
  public = list(
    `all_genomic_fasta` = NULL,
    `genome_gff` = NULL,
    `genome_gbff` = NULL,
    `rna_fasta` = NULL,
    `prot_fasta` = NULL,
    `genome_gtf` = NULL,
    `cds_fasta` = NULL,
    `sequence_report` = NULL,
    `annotation_report` = NULL,

    #' @description
    #' Initialize a new V2DownloadSummaryAvailableFiles class.
    #'
    #' @param all_genomic_fasta all_genomic_fasta
    #' @param genome_gff genome_gff
    #' @param genome_gbff genome_gbff
    #' @param rna_fasta rna_fasta
    #' @param prot_fasta prot_fasta
    #' @param genome_gtf genome_gtf
    #' @param cds_fasta cds_fasta
    #' @param sequence_report sequence_report
    #' @param annotation_report annotation_report
    #' @param ... Other optional arguments.
    initialize = function(`all_genomic_fasta` = NULL, `genome_gff` = NULL, `genome_gbff` = NULL, `rna_fasta` = NULL, `prot_fasta` = NULL, `genome_gtf` = NULL, `cds_fasta` = NULL, `sequence_report` = NULL, `annotation_report` = NULL, ...) {
      if (!is.null(`all_genomic_fasta`)) {
        stopifnot(R6::is.R6(`all_genomic_fasta`))
        self$`all_genomic_fasta` <- `all_genomic_fasta`
      }
      if (!is.null(`genome_gff`)) {
        stopifnot(R6::is.R6(`genome_gff`))
        self$`genome_gff` <- `genome_gff`
      }
      if (!is.null(`genome_gbff`)) {
        stopifnot(R6::is.R6(`genome_gbff`))
        self$`genome_gbff` <- `genome_gbff`
      }
      if (!is.null(`rna_fasta`)) {
        stopifnot(R6::is.R6(`rna_fasta`))
        self$`rna_fasta` <- `rna_fasta`
      }
      if (!is.null(`prot_fasta`)) {
        stopifnot(R6::is.R6(`prot_fasta`))
        self$`prot_fasta` <- `prot_fasta`
      }
      if (!is.null(`genome_gtf`)) {
        stopifnot(R6::is.R6(`genome_gtf`))
        self$`genome_gtf` <- `genome_gtf`
      }
      if (!is.null(`cds_fasta`)) {
        stopifnot(R6::is.R6(`cds_fasta`))
        self$`cds_fasta` <- `cds_fasta`
      }
      if (!is.null(`sequence_report`)) {
        stopifnot(R6::is.R6(`sequence_report`))
        self$`sequence_report` <- `sequence_report`
      }
      if (!is.null(`annotation_report`)) {
        stopifnot(R6::is.R6(`annotation_report`))
        self$`annotation_report` <- `annotation_report`
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
    #' @return V2DownloadSummaryAvailableFiles as a base R list.
    #' @examples
    #' # convert array of V2DownloadSummaryAvailableFiles (x) to a data frame
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
    #' Convert V2DownloadSummaryAvailableFiles to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2DownloadSummaryAvailableFilesObject <- list()
      if (!is.null(self$`all_genomic_fasta`)) {
        V2DownloadSummaryAvailableFilesObject[["all_genomic_fasta"]] <-
          self$`all_genomic_fasta`$toSimpleType()
      }
      if (!is.null(self$`genome_gff`)) {
        V2DownloadSummaryAvailableFilesObject[["genome_gff"]] <-
          self$`genome_gff`$toSimpleType()
      }
      if (!is.null(self$`genome_gbff`)) {
        V2DownloadSummaryAvailableFilesObject[["genome_gbff"]] <-
          self$`genome_gbff`$toSimpleType()
      }
      if (!is.null(self$`rna_fasta`)) {
        V2DownloadSummaryAvailableFilesObject[["rna_fasta"]] <-
          self$`rna_fasta`$toSimpleType()
      }
      if (!is.null(self$`prot_fasta`)) {
        V2DownloadSummaryAvailableFilesObject[["prot_fasta"]] <-
          self$`prot_fasta`$toSimpleType()
      }
      if (!is.null(self$`genome_gtf`)) {
        V2DownloadSummaryAvailableFilesObject[["genome_gtf"]] <-
          self$`genome_gtf`$toSimpleType()
      }
      if (!is.null(self$`cds_fasta`)) {
        V2DownloadSummaryAvailableFilesObject[["cds_fasta"]] <-
          self$`cds_fasta`$toSimpleType()
      }
      if (!is.null(self$`sequence_report`)) {
        V2DownloadSummaryAvailableFilesObject[["sequence_report"]] <-
          self$`sequence_report`$toSimpleType()
      }
      if (!is.null(self$`annotation_report`)) {
        V2DownloadSummaryAvailableFilesObject[["annotation_report"]] <-
          self$`annotation_report`$toSimpleType()
      }
      return(V2DownloadSummaryAvailableFilesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2DownloadSummaryAvailableFiles
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2DownloadSummaryAvailableFiles
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`all_genomic_fasta`)) {
        `all_genomic_fasta_object` <- V2DownloadSummaryFileSummary$new()
        `all_genomic_fasta_object`$fromJSON(jsonlite::toJSON(this_object$`all_genomic_fasta`, auto_unbox = TRUE, digits = NA))
        self$`all_genomic_fasta` <- `all_genomic_fasta_object`
      }
      if (!is.null(this_object$`genome_gff`)) {
        `genome_gff_object` <- V2DownloadSummaryFileSummary$new()
        `genome_gff_object`$fromJSON(jsonlite::toJSON(this_object$`genome_gff`, auto_unbox = TRUE, digits = NA))
        self$`genome_gff` <- `genome_gff_object`
      }
      if (!is.null(this_object$`genome_gbff`)) {
        `genome_gbff_object` <- V2DownloadSummaryFileSummary$new()
        `genome_gbff_object`$fromJSON(jsonlite::toJSON(this_object$`genome_gbff`, auto_unbox = TRUE, digits = NA))
        self$`genome_gbff` <- `genome_gbff_object`
      }
      if (!is.null(this_object$`rna_fasta`)) {
        `rna_fasta_object` <- V2DownloadSummaryFileSummary$new()
        `rna_fasta_object`$fromJSON(jsonlite::toJSON(this_object$`rna_fasta`, auto_unbox = TRUE, digits = NA))
        self$`rna_fasta` <- `rna_fasta_object`
      }
      if (!is.null(this_object$`prot_fasta`)) {
        `prot_fasta_object` <- V2DownloadSummaryFileSummary$new()
        `prot_fasta_object`$fromJSON(jsonlite::toJSON(this_object$`prot_fasta`, auto_unbox = TRUE, digits = NA))
        self$`prot_fasta` <- `prot_fasta_object`
      }
      if (!is.null(this_object$`genome_gtf`)) {
        `genome_gtf_object` <- V2DownloadSummaryFileSummary$new()
        `genome_gtf_object`$fromJSON(jsonlite::toJSON(this_object$`genome_gtf`, auto_unbox = TRUE, digits = NA))
        self$`genome_gtf` <- `genome_gtf_object`
      }
      if (!is.null(this_object$`cds_fasta`)) {
        `cds_fasta_object` <- V2DownloadSummaryFileSummary$new()
        `cds_fasta_object`$fromJSON(jsonlite::toJSON(this_object$`cds_fasta`, auto_unbox = TRUE, digits = NA))
        self$`cds_fasta` <- `cds_fasta_object`
      }
      if (!is.null(this_object$`sequence_report`)) {
        `sequence_report_object` <- V2DownloadSummaryFileSummary$new()
        `sequence_report_object`$fromJSON(jsonlite::toJSON(this_object$`sequence_report`, auto_unbox = TRUE, digits = NA))
        self$`sequence_report` <- `sequence_report_object`
      }
      if (!is.null(this_object$`annotation_report`)) {
        `annotation_report_object` <- V2DownloadSummaryFileSummary$new()
        `annotation_report_object`$fromJSON(jsonlite::toJSON(this_object$`annotation_report`, auto_unbox = TRUE, digits = NA))
        self$`annotation_report` <- `annotation_report_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2DownloadSummaryAvailableFiles in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2DownloadSummaryAvailableFiles
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2DownloadSummaryAvailableFiles
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`all_genomic_fasta` <- V2DownloadSummaryFileSummary$new()$fromJSON(jsonlite::toJSON(this_object$`all_genomic_fasta`, auto_unbox = TRUE, digits = NA))
      self$`genome_gff` <- V2DownloadSummaryFileSummary$new()$fromJSON(jsonlite::toJSON(this_object$`genome_gff`, auto_unbox = TRUE, digits = NA))
      self$`genome_gbff` <- V2DownloadSummaryFileSummary$new()$fromJSON(jsonlite::toJSON(this_object$`genome_gbff`, auto_unbox = TRUE, digits = NA))
      self$`rna_fasta` <- V2DownloadSummaryFileSummary$new()$fromJSON(jsonlite::toJSON(this_object$`rna_fasta`, auto_unbox = TRUE, digits = NA))
      self$`prot_fasta` <- V2DownloadSummaryFileSummary$new()$fromJSON(jsonlite::toJSON(this_object$`prot_fasta`, auto_unbox = TRUE, digits = NA))
      self$`genome_gtf` <- V2DownloadSummaryFileSummary$new()$fromJSON(jsonlite::toJSON(this_object$`genome_gtf`, auto_unbox = TRUE, digits = NA))
      self$`cds_fasta` <- V2DownloadSummaryFileSummary$new()$fromJSON(jsonlite::toJSON(this_object$`cds_fasta`, auto_unbox = TRUE, digits = NA))
      self$`sequence_report` <- V2DownloadSummaryFileSummary$new()$fromJSON(jsonlite::toJSON(this_object$`sequence_report`, auto_unbox = TRUE, digits = NA))
      self$`annotation_report` <- V2DownloadSummaryFileSummary$new()$fromJSON(jsonlite::toJSON(this_object$`annotation_report`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2DownloadSummaryAvailableFiles and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2DownloadSummaryAvailableFiles
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
# V2DownloadSummaryAvailableFiles$unlock()
#
## Below is an example to define the print function
# V2DownloadSummaryAvailableFiles$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2DownloadSummaryAvailableFiles$lock()

