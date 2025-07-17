#' @docType class
#' @title V2FileFileType
#' @description V2FileFileType Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2FileFileType <- R6::R6Class(
  "V2FileFileType",
  public = list(

    #' @description
    #' Initialize a new V2FileFileType class.
    #'
    #' @param ... Optional arguments.
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_v2FileFileType()

      if (length(val) == 0L) {
        val = "DUMMY_ENUM"
      } else {
        stopifnot(length(val) == 1L)
      }

      if (!val %in% enumvec) {
        if (!(val=="DUMMY_ENUM")) {
          stop("Use one of the valid values: ",
            paste0(enumvec, collapse = ", "))
        }
        warning("Initializing V2FileFileType with DUMMY_ENUM. Use one of the valid values: ",
          paste0(enumvec, collapse = ", "),
          ". If you did not manually initialize V2FileFileType, this may already be overwritten by an enum loaded from a JSON config.")
      }
      private$value <- val
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert V2FileFileType to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      return(private$value)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2FileFileType
    #'
    #' @param input_json the JSON input
    #'
    #' @return the instance of V2FileFileType
    fromJSON = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2FileFileType in JSON format
    toJSONString = function(...) {
      json <- jsonlite::toJSON(self$toSimpleType(), auto_unbox = TRUE, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2FileFileType
    #'
    #' @param input_json the JSON input
    #'
    #' @return the instance of V2FileFileType
    fromJSONString = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    }
  ),
  private = list(
    value = NULL
  )
)

# add to utils.R
.parse_v2FileFileType <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[UNKNOWN, FASTA, GFF3, DATA_REPORT, ANNOTATION_REPORT, GENOMIC_NUCLEOTIDE_FASTA, PROTEIN_FASTA, GENBANK_FLAT_FILE, GENPEPT_FLAT_FILE, README, PDB_FILE, CDS_NUCLEOTIDE_FASTA, RNA_NUCLEOTIDE_FASTA, DATA_TABLE, SEQUENCE_REPORT, GTF, PROKARYOTE_GENE_DATA_REPORT, PROKARYOTE_GENE_LOCATION_DATA_REPORT, GENOMIC_NUCLEOTIDE_WITH_FLANK_FASTA, BIOSAMPLE_REPORT, CATALOG, TAXONOMY_NAMES_REPORT]")
  unlist(strsplit(res, ", "))
}

