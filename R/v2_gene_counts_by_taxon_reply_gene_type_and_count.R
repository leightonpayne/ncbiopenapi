#' Create a new V2GeneCountsByTaxonReplyGeneTypeAndCount
#'
#' @description
#' V2GeneCountsByTaxonReplyGeneTypeAndCount Class
#'
#' @docType class
#' @title V2GeneCountsByTaxonReplyGeneTypeAndCount
#' @description V2GeneCountsByTaxonReplyGeneTypeAndCount Class
#' @format An \code{R6Class} generator object
#' @field gene_type  character [optional]
#' @field count  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2GeneCountsByTaxonReplyGeneTypeAndCount <- R6::R6Class(
  "V2GeneCountsByTaxonReplyGeneTypeAndCount",
  public = list(
    `gene_type` = NULL,
    `count` = NULL,

    #' @description
    #' Initialize a new V2GeneCountsByTaxonReplyGeneTypeAndCount class.
    #'
    #' @param gene_type gene_type
    #' @param count count
    #' @param ... Other optional arguments.
    initialize = function(`gene_type` = NULL, `count` = NULL, ...) {
      if (!is.null(`gene_type`)) {
        if (!(is.character(`gene_type`) && length(`gene_type`) == 1)) {
          stop(paste("Error! Invalid data for `gene_type`. Must be a string:", `gene_type`))
        }
        self$`gene_type` <- `gene_type`
      }
      if (!is.null(`count`)) {
        if (!(is.numeric(`count`) && length(`count`) == 1)) {
          stop(paste("Error! Invalid data for `count`. Must be an integer:", `count`))
        }
        self$`count` <- `count`
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
    #' @return V2GeneCountsByTaxonReplyGeneTypeAndCount as a base R list.
    #' @examples
    #' # convert array of V2GeneCountsByTaxonReplyGeneTypeAndCount (x) to a data frame
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
    #' Convert V2GeneCountsByTaxonReplyGeneTypeAndCount to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2GeneCountsByTaxonReplyGeneTypeAndCountObject <- list()
      if (!is.null(self$`gene_type`)) {
        V2GeneCountsByTaxonReplyGeneTypeAndCountObject[["gene_type"]] <-
          self$`gene_type`
      }
      if (!is.null(self$`count`)) {
        V2GeneCountsByTaxonReplyGeneTypeAndCountObject[["count"]] <-
          self$`count`
      }
      return(V2GeneCountsByTaxonReplyGeneTypeAndCountObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GeneCountsByTaxonReplyGeneTypeAndCount
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GeneCountsByTaxonReplyGeneTypeAndCount
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gene_type`)) {
        self$`gene_type` <- this_object$`gene_type`
      }
      if (!is.null(this_object$`count`)) {
        self$`count` <- this_object$`count`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2GeneCountsByTaxonReplyGeneTypeAndCount in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GeneCountsByTaxonReplyGeneTypeAndCount
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GeneCountsByTaxonReplyGeneTypeAndCount
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gene_type` <- this_object$`gene_type`
      self$`count` <- this_object$`count`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2GeneCountsByTaxonReplyGeneTypeAndCount and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2GeneCountsByTaxonReplyGeneTypeAndCount
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
# V2GeneCountsByTaxonReplyGeneTypeAndCount$unlock()
#
## Below is an example to define the print function
# V2GeneCountsByTaxonReplyGeneTypeAndCount$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2GeneCountsByTaxonReplyGeneTypeAndCount$lock()

