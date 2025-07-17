#' @docType class
#' @title V2reportsRankType
#' @description V2reportsRankType Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsRankType <- R6::R6Class(
  "V2reportsRankType",
  public = list(

    #' @description
    #' Initialize a new V2reportsRankType class.
    #'
    #' @param ... Optional arguments.
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_v2reportsRankType()

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
        warning("Initializing V2reportsRankType with DUMMY_ENUM. Use one of the valid values: ",
          paste0(enumvec, collapse = ", "),
          ". If you did not manually initialize V2reportsRankType, this may already be overwritten by an enum loaded from a JSON config.")
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
    #' Convert V2reportsRankType to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      return(private$value)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsRankType
    #'
    #' @param input_json the JSON input
    #'
    #' @return the instance of V2reportsRankType
    fromJSON = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsRankType in JSON format
    toJSONString = function(...) {
      json <- jsonlite::toJSON(self$toSimpleType(), auto_unbox = TRUE, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsRankType
    #'
    #' @param input_json the JSON input
    #'
    #' @return the instance of V2reportsRankType
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
.parse_v2reportsRankType <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[NO_RANK, SUPERKINGDOM, DOMAIN, REALM, KINGDOM, SUBKINGDOM, SUPERPHYLUM, SUBPHYLUM, PHYLUM, CLADE, SUPERCLASS, CLASS, SUBCLASS, INFRACLASS, COHORT, SUBCOHORT, SUPERORDER, ORDER, SUBORDER, INFRAORDER, PARVORDER, SUPERFAMILY, FAMILY, SUBFAMILY, GENUS, SUBGENUS, SPECIES_GROUP, SPECIES_SUBGROUP, SPECIES, SUBSPECIES, TRIBE, SUBTRIBE, FORMA, VARIETAS, STRAIN, SECTION, SUBSECTION, PATHOGROUP, SUBVARIETY, GENOTYPE, SEROTYPE, ISOLATE, MORPH, SERIES, FORMA_SPECIALIS, SEROGROUP, BIOTYPE, ACELLULAR_ROOT, CELLULAR_ROOT]")
  unlist(strsplit(res, ", "))
}

