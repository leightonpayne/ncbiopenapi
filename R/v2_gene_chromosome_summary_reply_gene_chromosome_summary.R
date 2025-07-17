#' Create a new V2GeneChromosomeSummaryReplyGeneChromosomeSummary
#'
#' @description
#' V2GeneChromosomeSummaryReplyGeneChromosomeSummary Class
#'
#' @docType class
#' @title V2GeneChromosomeSummaryReplyGeneChromosomeSummary
#' @description V2GeneChromosomeSummaryReplyGeneChromosomeSummary Class
#' @format An \code{R6Class} generator object
#' @field name  character [optional]
#' @field count  integer [optional]
#' @field accession  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2GeneChromosomeSummaryReplyGeneChromosomeSummary <- R6::R6Class(
  "V2GeneChromosomeSummaryReplyGeneChromosomeSummary",
  public = list(
    `name` = NULL,
    `count` = NULL,
    `accession` = NULL,

    #' @description
    #' Initialize a new V2GeneChromosomeSummaryReplyGeneChromosomeSummary class.
    #'
    #' @param name name
    #' @param count count
    #' @param accession accession
    #' @param ... Other optional arguments.
    initialize = function(`name` = NULL, `count` = NULL, `accession` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`count`)) {
        if (!(is.numeric(`count`) && length(`count`) == 1)) {
          stop(paste("Error! Invalid data for `count`. Must be an integer:", `count`))
        }
        self$`count` <- `count`
      }
      if (!is.null(`accession`)) {
        if (!(is.character(`accession`) && length(`accession`) == 1)) {
          stop(paste("Error! Invalid data for `accession`. Must be a string:", `accession`))
        }
        self$`accession` <- `accession`
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
    #' @return V2GeneChromosomeSummaryReplyGeneChromosomeSummary as a base R list.
    #' @examples
    #' # convert array of V2GeneChromosomeSummaryReplyGeneChromosomeSummary (x) to a data frame
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
    #' Convert V2GeneChromosomeSummaryReplyGeneChromosomeSummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2GeneChromosomeSummaryReplyGeneChromosomeSummaryObject <- list()
      if (!is.null(self$`name`)) {
        V2GeneChromosomeSummaryReplyGeneChromosomeSummaryObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`count`)) {
        V2GeneChromosomeSummaryReplyGeneChromosomeSummaryObject[["count"]] <-
          self$`count`
      }
      if (!is.null(self$`accession`)) {
        V2GeneChromosomeSummaryReplyGeneChromosomeSummaryObject[["accession"]] <-
          self$`accession`
      }
      return(V2GeneChromosomeSummaryReplyGeneChromosomeSummaryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GeneChromosomeSummaryReplyGeneChromosomeSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GeneChromosomeSummaryReplyGeneChromosomeSummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`count`)) {
        self$`count` <- this_object$`count`
      }
      if (!is.null(this_object$`accession`)) {
        self$`accession` <- this_object$`accession`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2GeneChromosomeSummaryReplyGeneChromosomeSummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GeneChromosomeSummaryReplyGeneChromosomeSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GeneChromosomeSummaryReplyGeneChromosomeSummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`count` <- this_object$`count`
      self$`accession` <- this_object$`accession`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2GeneChromosomeSummaryReplyGeneChromosomeSummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2GeneChromosomeSummaryReplyGeneChromosomeSummary
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
# V2GeneChromosomeSummaryReplyGeneChromosomeSummary$unlock()
#
## Below is an example to define the print function
# V2GeneChromosomeSummaryReplyGeneChromosomeSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2GeneChromosomeSummaryReplyGeneChromosomeSummary$lock()

