#' Create a new V2GeneCountsByTaxonReply
#'
#' @description
#' V2GeneCountsByTaxonReply Class
#'
#' @docType class
#' @title V2GeneCountsByTaxonReply
#' @description V2GeneCountsByTaxonReply Class
#' @format An \code{R6Class} generator object
#' @field report  list(\link{V2GeneCountsByTaxonReplyGeneTypeAndCount}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2GeneCountsByTaxonReply <- R6::R6Class(
  "V2GeneCountsByTaxonReply",
  public = list(
    `report` = NULL,

    #' @description
    #' Initialize a new V2GeneCountsByTaxonReply class.
    #'
    #' @param report report
    #' @param ... Other optional arguments.
    initialize = function(`report` = NULL, ...) {
      if (!is.null(`report`)) {
        stopifnot(is.vector(`report`), length(`report`) != 0)
        sapply(`report`, function(x) stopifnot(R6::is.R6(x)))
        self$`report` <- `report`
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
    #' @return V2GeneCountsByTaxonReply as a base R list.
    #' @examples
    #' # convert array of V2GeneCountsByTaxonReply (x) to a data frame
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
    #' Convert V2GeneCountsByTaxonReply to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2GeneCountsByTaxonReplyObject <- list()
      if (!is.null(self$`report`)) {
        V2GeneCountsByTaxonReplyObject[["report"]] <-
          lapply(self$`report`, function(x) x$toSimpleType())
      }
      return(V2GeneCountsByTaxonReplyObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GeneCountsByTaxonReply
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GeneCountsByTaxonReply
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`report`)) {
        self$`report` <- ApiClient$new()$deserializeObj(this_object$`report`, "array[V2GeneCountsByTaxonReplyGeneTypeAndCount]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2GeneCountsByTaxonReply in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GeneCountsByTaxonReply
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GeneCountsByTaxonReply
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`report` <- ApiClient$new()$deserializeObj(this_object$`report`, "array[V2GeneCountsByTaxonReplyGeneTypeAndCount]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2GeneCountsByTaxonReply and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2GeneCountsByTaxonReply
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
# V2GeneCountsByTaxonReply$unlock()
#
## Below is an example to define the print function
# V2GeneCountsByTaxonReply$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2GeneCountsByTaxonReply$lock()

