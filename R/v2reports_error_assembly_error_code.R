#' @docType class
#' @title V2reportsErrorAssemblyErrorCode
#' @description V2reportsErrorAssemblyErrorCode Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsErrorAssemblyErrorCode <- R6::R6Class(
  "V2reportsErrorAssemblyErrorCode",
  public = list(

    #' @description
    #' Initialize a new V2reportsErrorAssemblyErrorCode class.
    #'
    #' @param ... Optional arguments.
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_v2reportsErrorAssemblyErrorCode()

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
        warning("Initializing V2reportsErrorAssemblyErrorCode with DUMMY_ENUM. Use one of the valid values: ",
          paste0(enumvec, collapse = ", "),
          ". If you did not manually initialize V2reportsErrorAssemblyErrorCode, this may already be overwritten by an enum loaded from a JSON config.")
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
    #' Convert V2reportsErrorAssemblyErrorCode to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      return(private$value)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsErrorAssemblyErrorCode
    #'
    #' @param input_json the JSON input
    #'
    #' @return the instance of V2reportsErrorAssemblyErrorCode
    fromJSON = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsErrorAssemblyErrorCode in JSON format
    toJSONString = function(...) {
      json <- jsonlite::toJSON(self$toSimpleType(), auto_unbox = TRUE, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsErrorAssemblyErrorCode
    #'
    #' @param input_json the JSON input
    #'
    #' @return the instance of V2reportsErrorAssemblyErrorCode
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
.parse_v2reportsErrorAssemblyErrorCode <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[UNKNOWN_ASSEMBLY_ERROR_CODE, INVALID_BIOPROJECT_IDS, NO_ASSEMBLIES_FOR_BIOPROJECTS, INVALID_TAXON, MISSING_SEARCH_FIELD, INVALID_BIOSAMPLE_IDS, NO_ASSEMBLIES_FOR_BIOSAMPLE_IDS, NO_ASSEMBLIES_FOR_ASSEMBLY_NAMES, INVALID_WGS_ACCESSIONS, NO_ASSEMBLIES_FOR_WGS_ACCESSIONS]")
  unlist(strsplit(res, ", "))
}

