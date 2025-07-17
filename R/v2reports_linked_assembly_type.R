#' @docType class
#' @title V2reportsLinkedAssemblyType
#' @description V2reportsLinkedAssemblyType Class
#' @format An \code{R6Class} generator object
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsLinkedAssemblyType <- R6::R6Class(
  "V2reportsLinkedAssemblyType",
  public = list(

    #' @description
    #' Initialize a new V2reportsLinkedAssemblyType class.
    #'
    #' @param ... Optional arguments.
    initialize = function(...) {
      local.optional.var <- list(...)
      val <- unlist(local.optional.var)
      enumvec <- .parse_v2reportsLinkedAssemblyType()

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
        warning("Initializing V2reportsLinkedAssemblyType with DUMMY_ENUM. Use one of the valid values: ",
          paste0(enumvec, collapse = ", "),
          ". If you did not manually initialize V2reportsLinkedAssemblyType, this may already be overwritten by an enum loaded from a JSON config.")
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
    #' Convert V2reportsLinkedAssemblyType to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      return(private$value)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsLinkedAssemblyType
    #'
    #' @param input_json the JSON input
    #'
    #' @return the instance of V2reportsLinkedAssemblyType
    fromJSON = function(input_json) {
      private$value <- jsonlite::fromJSON(input_json,
          simplifyVector = FALSE)
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsLinkedAssemblyType in JSON format
    toJSONString = function(...) {
      json <- jsonlite::toJSON(self$toSimpleType(), auto_unbox = TRUE, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsLinkedAssemblyType
    #'
    #' @param input_json the JSON input
    #'
    #' @return the instance of V2reportsLinkedAssemblyType
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
.parse_v2reportsLinkedAssemblyType <- function(vals) {
  res <- gsub("^\\[|\\]$", "", "[LINKED_ASSEMBLY_TYPE_UNKNOWN, alternate_pseudohaplotype_of_diploid, principal_pseudohaplotype_of_diploid, maternal_haplotype_of_diploid, paternal_haplotype_of_diploid, haplotype_1, haplotype_2, haplotype_3, haplotype_4, haploid]")
  unlist(strsplit(res, ", "))
}

