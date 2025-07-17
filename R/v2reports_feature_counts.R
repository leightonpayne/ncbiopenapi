#' Create a new V2reportsFeatureCounts
#'
#' @description
#' V2reportsFeatureCounts Class
#'
#' @docType class
#' @title V2reportsFeatureCounts
#' @description V2reportsFeatureCounts Class
#' @format An \code{R6Class} generator object
#' @field gene_counts  \link{V2reportsGeneCounts} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsFeatureCounts <- R6::R6Class(
  "V2reportsFeatureCounts",
  public = list(
    `gene_counts` = NULL,

    #' @description
    #' Initialize a new V2reportsFeatureCounts class.
    #'
    #' @param gene_counts gene_counts
    #' @param ... Other optional arguments.
    initialize = function(`gene_counts` = NULL, ...) {
      if (!is.null(`gene_counts`)) {
        stopifnot(R6::is.R6(`gene_counts`))
        self$`gene_counts` <- `gene_counts`
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
    #' @return V2reportsFeatureCounts as a base R list.
    #' @examples
    #' # convert array of V2reportsFeatureCounts (x) to a data frame
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
    #' Convert V2reportsFeatureCounts to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsFeatureCountsObject <- list()
      if (!is.null(self$`gene_counts`)) {
        V2reportsFeatureCountsObject[["gene_counts"]] <-
          self$`gene_counts`$toSimpleType()
      }
      return(V2reportsFeatureCountsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsFeatureCounts
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsFeatureCounts
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gene_counts`)) {
        `gene_counts_object` <- V2reportsGeneCounts$new()
        `gene_counts_object`$fromJSON(jsonlite::toJSON(this_object$`gene_counts`, auto_unbox = TRUE, digits = NA))
        self$`gene_counts` <- `gene_counts_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsFeatureCounts in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsFeatureCounts
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsFeatureCounts
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gene_counts` <- V2reportsGeneCounts$new()$fromJSON(jsonlite::toJSON(this_object$`gene_counts`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsFeatureCounts and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsFeatureCounts
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
# V2reportsFeatureCounts$unlock()
#
## Below is an example to define the print function
# V2reportsFeatureCounts$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsFeatureCounts$lock()

