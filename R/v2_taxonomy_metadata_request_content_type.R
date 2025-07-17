#' @docType class
#' @title V2TaxonomyMetadataRequestContentType
#' @description V2TaxonomyMetadataRequestContentType Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2TaxonomyMetadataRequestContentType <- R6::R6Class(
  "V2TaxonomyMetadataRequestContentType",
  public = list(

    #' @description
    #' Initialize a new V2TaxonomyMetadataRequestContentType class.
    #'
    #' @param ... Optional arguments.
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_v2TaxonomyMetadataRequestContentType()

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
        warning("Initializing V2TaxonomyMetadataRequestContentType with DUMMY_ENUM. Use one of the valid values: ",
          paste0(enumvec, collapse = ", "),
          ". If you did not manually initialize V2TaxonomyMetadataRequestContentType, this may already be overwritten by an enum loaded from a JSON config.")
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
    #' Convert V2TaxonomyMetadataRequestContentType to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      return(private$value)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyMetadataRequestContentType
    #'
    #' @param input_json the JSON input
    #'
    #' @return the instance of V2TaxonomyMetadataRequestContentType
    fromJSON = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2TaxonomyMetadataRequestContentType in JSON format
    toJSONString = function(...) {
      json <- jsonlite::toJSON(self$toSimpleType(), auto_unbox = TRUE, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyMetadataRequestContentType
    #'
    #' @param input_json the JSON input
    #'
    #' @return the instance of V2TaxonomyMetadataRequestContentType
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
.parse_v2TaxonomyMetadataRequestContentType <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[COMPLETE, TAXIDS, METADATA]")
  unlist(strsplit(res, ", "))
}

