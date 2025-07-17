#' Create a new V2reportsGenomicRegion
#'
#' @description
#' V2reportsGenomicRegion Class
#'
#' @docType class
#' @title V2reportsGenomicRegion
#' @description V2reportsGenomicRegion Class
#' @format An \code{R6Class} generator object
#' @field gene_range  \link{V2reportsSeqRangeSet} [optional]
#' @field type  \link{V2reportsGenomicRegionGenomicRegionType} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsGenomicRegion <- R6::R6Class(
  "V2reportsGenomicRegion",
  public = list(
    `gene_range` = NULL,
    `type` = NULL,

    #' @description
    #' Initialize a new V2reportsGenomicRegion class.
    #'
    #' @param gene_range gene_range
    #' @param type type
    #' @param ... Other optional arguments.
    initialize = function(`gene_range` = NULL, `type` = NULL, ...) {
      if (!is.null(`gene_range`)) {
        stopifnot(R6::is.R6(`gene_range`))
        self$`gene_range` <- `gene_range`
      }
      if (!is.null(`type`)) {
        if (!(`type` %in% c())) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`type`))
        self$`type` <- `type`
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
    #' @return V2reportsGenomicRegion as a base R list.
    #' @examples
    #' # convert array of V2reportsGenomicRegion (x) to a data frame
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
    #' Convert V2reportsGenomicRegion to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsGenomicRegionObject <- list()
      if (!is.null(self$`gene_range`)) {
        V2reportsGenomicRegionObject[["gene_range"]] <-
          self$`gene_range`$toSimpleType()
      }
      if (!is.null(self$`type`)) {
        V2reportsGenomicRegionObject[["type"]] <-
          self$`type`$toSimpleType()
      }
      return(V2reportsGenomicRegionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsGenomicRegion
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsGenomicRegion
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gene_range`)) {
        `gene_range_object` <- V2reportsSeqRangeSet$new()
        `gene_range_object`$fromJSON(jsonlite::toJSON(this_object$`gene_range`, auto_unbox = TRUE, digits = NA))
        self$`gene_range` <- `gene_range_object`
      }
      if (!is.null(this_object$`type`)) {
        `type_object` <- V2reportsGenomicRegionGenomicRegionType$new()
        `type_object`$fromJSON(jsonlite::toJSON(this_object$`type`, auto_unbox = TRUE, digits = NA))
        self$`type` <- `type_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsGenomicRegion in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsGenomicRegion
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsGenomicRegion
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gene_range` <- V2reportsSeqRangeSet$new()$fromJSON(jsonlite::toJSON(this_object$`gene_range`, auto_unbox = TRUE, digits = NA))
      self$`type` <- V2reportsGenomicRegionGenomicRegionType$new()$fromJSON(jsonlite::toJSON(this_object$`type`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsGenomicRegion and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsGenomicRegion
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
# V2reportsGenomicRegion$unlock()
#
## Below is an example to define the print function
# V2reportsGenomicRegion$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsGenomicRegion$lock()

