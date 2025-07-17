#' @docType class
#' @title V2IncludeTabularHeader
#' @description V2IncludeTabularHeader Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2IncludeTabularHeader <- R6::R6Class(
  "V2IncludeTabularHeader",
  public = list(

    #' @description
    #' Initialize a new V2IncludeTabularHeader class.
    #'
    #' @param ... Optional arguments.
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_v2IncludeTabularHeader()

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
        warning("Initializing V2IncludeTabularHeader with DUMMY_ENUM. Use one of the valid values: ",
          paste0(enumvec, collapse = ", "),
          ". If you did not manually initialize V2IncludeTabularHeader, this may already be overwritten by an enum loaded from a JSON config.")
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
    #' Convert V2IncludeTabularHeader to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      return(private$value)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2IncludeTabularHeader
    #'
    #' @param input_json the JSON input
    #'
    #' @return the instance of V2IncludeTabularHeader
    fromJSON = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2IncludeTabularHeader in JSON format
    toJSONString = function(...) {
      json <- jsonlite::toJSON(self$toSimpleType(), auto_unbox = TRUE, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2IncludeTabularHeader
    #'
    #' @param input_json the JSON input
    #'
    #' @return the instance of V2IncludeTabularHeader
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
.parse_v2IncludeTabularHeader <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[INCLUDE_TABULAR_HEADER_FIRST_PAGE_ONLY, INCLUDE_TABULAR_HEADER_ALWAYS, INCLUDE_TABULAR_HEADER_NEVER]")
  unlist(strsplit(res, ", "))
}

