#' Create a new V2GeneCountsByTaxonRequest
#'
#' @description
#' V2GeneCountsByTaxonRequest Class
#'
#' @docType class
#' @title V2GeneCountsByTaxonRequest
#' @description V2GeneCountsByTaxonRequest Class
#' @format An \code{R6Class} generator object
#' @field taxon  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2GeneCountsByTaxonRequest <- R6::R6Class(
  "V2GeneCountsByTaxonRequest",
  public = list(
    `taxon` = NULL,

    #' @description
    #' Initialize a new V2GeneCountsByTaxonRequest class.
    #'
    #' @param taxon taxon
    #' @param ... Other optional arguments.
    initialize = function(`taxon` = NULL, ...) {
      if (!is.null(`taxon`)) {
        if (!(is.character(`taxon`) && length(`taxon`) == 1)) {
          stop(paste("Error! Invalid data for `taxon`. Must be a string:", `taxon`))
        }
        self$`taxon` <- `taxon`
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
    #' @return V2GeneCountsByTaxonRequest as a base R list.
    #' @examples
    #' # convert array of V2GeneCountsByTaxonRequest (x) to a data frame
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
    #' Convert V2GeneCountsByTaxonRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2GeneCountsByTaxonRequestObject <- list()
      if (!is.null(self$`taxon`)) {
        V2GeneCountsByTaxonRequestObject[["taxon"]] <-
          self$`taxon`
      }
      return(V2GeneCountsByTaxonRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GeneCountsByTaxonRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GeneCountsByTaxonRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`taxon`)) {
        self$`taxon` <- this_object$`taxon`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2GeneCountsByTaxonRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GeneCountsByTaxonRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GeneCountsByTaxonRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`taxon` <- this_object$`taxon`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2GeneCountsByTaxonRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2GeneCountsByTaxonRequest
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
# V2GeneCountsByTaxonRequest$unlock()
#
## Below is an example to define the print function
# V2GeneCountsByTaxonRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2GeneCountsByTaxonRequest$lock()

