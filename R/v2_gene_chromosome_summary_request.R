#' Create a new V2GeneChromosomeSummaryRequest
#'
#' @description
#' V2GeneChromosomeSummaryRequest Class
#'
#' @docType class
#' @title V2GeneChromosomeSummaryRequest
#' @description V2GeneChromosomeSummaryRequest Class
#' @format An \code{R6Class} generator object
#' @field taxon  character [optional]
#' @field annotation_name  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2GeneChromosomeSummaryRequest <- R6::R6Class(
  "V2GeneChromosomeSummaryRequest",
  public = list(
    `taxon` = NULL,
    `annotation_name` = NULL,

    #' @description
    #' Initialize a new V2GeneChromosomeSummaryRequest class.
    #'
    #' @param taxon taxon
    #' @param annotation_name annotation_name
    #' @param ... Other optional arguments.
    initialize = function(`taxon` = NULL, `annotation_name` = NULL, ...) {
      if (!is.null(`taxon`)) {
        if (!(is.character(`taxon`) && length(`taxon`) == 1)) {
          stop(paste("Error! Invalid data for `taxon`. Must be a string:", `taxon`))
        }
        self$`taxon` <- `taxon`
      }
      if (!is.null(`annotation_name`)) {
        if (!(is.character(`annotation_name`) && length(`annotation_name`) == 1)) {
          stop(paste("Error! Invalid data for `annotation_name`. Must be a string:", `annotation_name`))
        }
        self$`annotation_name` <- `annotation_name`
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
    #' @return V2GeneChromosomeSummaryRequest as a base R list.
    #' @examples
    #' # convert array of V2GeneChromosomeSummaryRequest (x) to a data frame
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
    #' Convert V2GeneChromosomeSummaryRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2GeneChromosomeSummaryRequestObject <- list()
      if (!is.null(self$`taxon`)) {
        V2GeneChromosomeSummaryRequestObject[["taxon"]] <-
          self$`taxon`
      }
      if (!is.null(self$`annotation_name`)) {
        V2GeneChromosomeSummaryRequestObject[["annotation_name"]] <-
          self$`annotation_name`
      }
      return(V2GeneChromosomeSummaryRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GeneChromosomeSummaryRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GeneChromosomeSummaryRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`taxon`)) {
        self$`taxon` <- this_object$`taxon`
      }
      if (!is.null(this_object$`annotation_name`)) {
        self$`annotation_name` <- this_object$`annotation_name`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2GeneChromosomeSummaryRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GeneChromosomeSummaryRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GeneChromosomeSummaryRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`taxon` <- this_object$`taxon`
      self$`annotation_name` <- this_object$`annotation_name`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2GeneChromosomeSummaryRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2GeneChromosomeSummaryRequest
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
# V2GeneChromosomeSummaryRequest$unlock()
#
## Below is an example to define the print function
# V2GeneChromosomeSummaryRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2GeneChromosomeSummaryRequest$lock()

