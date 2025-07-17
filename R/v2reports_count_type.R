#' @docType class
#' @title V2reportsCountType
#' @description V2reportsCountType Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsCountType <- R6::R6Class(
  "V2reportsCountType",
  public = list(

    #' @description
    #' Initialize a new V2reportsCountType class.
    #'
    #' @param ... Optional arguments.
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_v2reportsCountType()

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
        warning("Initializing V2reportsCountType with DUMMY_ENUM. Use one of the valid values: ",
          paste0(enumvec, collapse = ", "),
          ". If you did not manually initialize V2reportsCountType, this may already be overwritten by an enum loaded from a JSON config.")
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
    #' Convert V2reportsCountType to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      return(private$value)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsCountType
    #'
    #' @param input_json the JSON input
    #'
    #' @return the instance of V2reportsCountType
    fromJSON = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsCountType in JSON format
    toJSONString = function(...) {
      json <- jsonlite::toJSON(self$toSimpleType(), auto_unbox = TRUE, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsCountType
    #'
    #' @param input_json the JSON input
    #'
    #' @return the instance of V2reportsCountType
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
.parse_v2reportsCountType <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[COUNT_TYPE_UNSPECIFIED, COUNT_TYPE_ASSEMBLY, COUNT_TYPE_GENE, COUNT_TYPE_tRNA, COUNT_TYPE_rRNA, COUNT_TYPE_snRNA, COUNT_TYPE_scRNA, COUNT_TYPE_snoRNA, COUNT_TYPE_PROTEIN_CODING, COUNT_TYPE_PSEUDO, COUNT_TYPE_TRANSPOSON, COUNT_TYPE_miscRNA, COUNT_TYPE_ncRNA, COUNT_TYPE_BIOLOGICAL_REGION, COUNT_TYPE_OTHER, COUNT_TYPE_ORGANELLE]")
  unlist(strsplit(res, ", "))
}

