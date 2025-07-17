#' Create a new V2reportsSequenceInformation
#'
#' @description
#' V2reportsSequenceInformation Class
#'
#' @docType class
#' @title V2reportsSequenceInformation
#' @description V2reportsSequenceInformation Class
#' @format An \code{R6Class} generator object
#' @field accession  character [optional]
#' @field submission_date  character [optional]
#' @field submitter  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsSequenceInformation <- R6::R6Class(
  "V2reportsSequenceInformation",
  public = list(
    `accession` = NULL,
    `submission_date` = NULL,
    `submitter` = NULL,

    #' @description
    #' Initialize a new V2reportsSequenceInformation class.
    #'
    #' @param accession accession
    #' @param submission_date submission_date
    #' @param submitter submitter
    #' @param ... Other optional arguments.
    initialize = function(`accession` = NULL, `submission_date` = NULL, `submitter` = NULL, ...) {
      if (!is.null(`accession`)) {
        if (!(is.character(`accession`) && length(`accession`) == 1)) {
          stop(paste("Error! Invalid data for `accession`. Must be a string:", `accession`))
        }
        self$`accession` <- `accession`
      }
      if (!is.null(`submission_date`)) {
        if (!(is.character(`submission_date`) && length(`submission_date`) == 1)) {
          stop(paste("Error! Invalid data for `submission_date`. Must be a string:", `submission_date`))
        }
        self$`submission_date` <- `submission_date`
      }
      if (!is.null(`submitter`)) {
        if (!(is.character(`submitter`) && length(`submitter`) == 1)) {
          stop(paste("Error! Invalid data for `submitter`. Must be a string:", `submitter`))
        }
        self$`submitter` <- `submitter`
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
    #' @return V2reportsSequenceInformation as a base R list.
    #' @examples
    #' # convert array of V2reportsSequenceInformation (x) to a data frame
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
    #' Convert V2reportsSequenceInformation to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsSequenceInformationObject <- list()
      if (!is.null(self$`accession`)) {
        V2reportsSequenceInformationObject[["accession"]] <-
          self$`accession`
      }
      if (!is.null(self$`submission_date`)) {
        V2reportsSequenceInformationObject[["submission_date"]] <-
          self$`submission_date`
      }
      if (!is.null(self$`submitter`)) {
        V2reportsSequenceInformationObject[["submitter"]] <-
          self$`submitter`
      }
      return(V2reportsSequenceInformationObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsSequenceInformation
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsSequenceInformation
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accession`)) {
        self$`accession` <- this_object$`accession`
      }
      if (!is.null(this_object$`submission_date`)) {
        self$`submission_date` <- this_object$`submission_date`
      }
      if (!is.null(this_object$`submitter`)) {
        self$`submitter` <- this_object$`submitter`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsSequenceInformation in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsSequenceInformation
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsSequenceInformation
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accession` <- this_object$`accession`
      self$`submission_date` <- this_object$`submission_date`
      self$`submitter` <- this_object$`submitter`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsSequenceInformation and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsSequenceInformation
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
# V2reportsSequenceInformation$unlock()
#
## Below is an example to define the print function
# V2reportsSequenceInformation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsSequenceInformation$lock()

