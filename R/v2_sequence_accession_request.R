#' Create a new V2SequenceAccessionRequest
#'
#' @description
#' V2SequenceAccessionRequest Class
#'
#' @docType class
#' @title V2SequenceAccessionRequest
#' @description V2SequenceAccessionRequest Class
#' @format An \code{R6Class} generator object
#' @field accession  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2SequenceAccessionRequest <- R6::R6Class(
  "V2SequenceAccessionRequest",
  public = list(
    `accession` = NULL,

    #' @description
    #' Initialize a new V2SequenceAccessionRequest class.
    #'
    #' @param accession accession
    #' @param ... Other optional arguments.
    initialize = function(`accession` = NULL, ...) {
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
    #' @return V2SequenceAccessionRequest as a base R list.
    #' @examples
    #' # convert array of V2SequenceAccessionRequest (x) to a data frame
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
    #' Convert V2SequenceAccessionRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2SequenceAccessionRequestObject <- list()
      if (!is.null(self$`accession`)) {
        V2SequenceAccessionRequestObject[["accession"]] <-
          self$`accession`
      }
      return(V2SequenceAccessionRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2SequenceAccessionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2SequenceAccessionRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accession`)) {
        self$`accession` <- this_object$`accession`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2SequenceAccessionRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2SequenceAccessionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2SequenceAccessionRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accession` <- this_object$`accession`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2SequenceAccessionRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2SequenceAccessionRequest
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
# V2SequenceAccessionRequest$unlock()
#
## Below is an example to define the print function
# V2SequenceAccessionRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2SequenceAccessionRequest$lock()

