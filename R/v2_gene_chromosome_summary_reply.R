#' Create a new V2GeneChromosomeSummaryReply
#'
#' @description
#' V2GeneChromosomeSummaryReply Class
#'
#' @docType class
#' @title V2GeneChromosomeSummaryReply
#' @description V2GeneChromosomeSummaryReply Class
#' @format An \code{R6Class} generator object
#' @field gene_chromosome_summaries  list(\link{V2GeneChromosomeSummaryReplyGeneChromosomeSummary}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2GeneChromosomeSummaryReply <- R6::R6Class(
  "V2GeneChromosomeSummaryReply",
  public = list(
    `gene_chromosome_summaries` = NULL,

    #' @description
    #' Initialize a new V2GeneChromosomeSummaryReply class.
    #'
    #' @param gene_chromosome_summaries gene_chromosome_summaries
    #' @param ... Other optional arguments.
    initialize = function(`gene_chromosome_summaries` = NULL, ...) {
      if (!is.null(`gene_chromosome_summaries`)) {
        stopifnot(is.vector(`gene_chromosome_summaries`), length(`gene_chromosome_summaries`) != 0)
        sapply(`gene_chromosome_summaries`, function(x) stopifnot(R6::is.R6(x)))
        self$`gene_chromosome_summaries` <- `gene_chromosome_summaries`
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
    #' @return V2GeneChromosomeSummaryReply as a base R list.
    #' @examples
    #' # convert array of V2GeneChromosomeSummaryReply (x) to a data frame
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
    #' Convert V2GeneChromosomeSummaryReply to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2GeneChromosomeSummaryReplyObject <- list()
      if (!is.null(self$`gene_chromosome_summaries`)) {
        V2GeneChromosomeSummaryReplyObject[["gene_chromosome_summaries"]] <-
          lapply(self$`gene_chromosome_summaries`, function(x) x$toSimpleType())
      }
      return(V2GeneChromosomeSummaryReplyObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GeneChromosomeSummaryReply
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GeneChromosomeSummaryReply
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gene_chromosome_summaries`)) {
        self$`gene_chromosome_summaries` <- ApiClient$new()$deserializeObj(this_object$`gene_chromosome_summaries`, "array[V2GeneChromosomeSummaryReplyGeneChromosomeSummary]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2GeneChromosomeSummaryReply in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GeneChromosomeSummaryReply
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GeneChromosomeSummaryReply
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gene_chromosome_summaries` <- ApiClient$new()$deserializeObj(this_object$`gene_chromosome_summaries`, "array[V2GeneChromosomeSummaryReplyGeneChromosomeSummary]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2GeneChromosomeSummaryReply and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2GeneChromosomeSummaryReply
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
# V2GeneChromosomeSummaryReply$unlock()
#
## Below is an example to define the print function
# V2GeneChromosomeSummaryReply$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2GeneChromosomeSummaryReply$lock()

