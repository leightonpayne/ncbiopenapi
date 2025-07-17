#' Create a new V2reportsSeqRangeSet
#'
#' @description
#' V2reportsSeqRangeSet Class
#'
#' @docType class
#' @title V2reportsSeqRangeSet
#' @description V2reportsSeqRangeSet Class
#' @format An \code{R6Class} generator object
#' @field accession_version  character [optional]
#' @field range  list(\link{V2reportsRange}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsSeqRangeSet <- R6::R6Class(
  "V2reportsSeqRangeSet",
  public = list(
    `accession_version` = NULL,
    `range` = NULL,

    #' @description
    #' Initialize a new V2reportsSeqRangeSet class.
    #'
    #' @param accession_version accession_version
    #' @param range range
    #' @param ... Other optional arguments.
    initialize = function(`accession_version` = NULL, `range` = NULL, ...) {
      if (!is.null(`accession_version`)) {
        if (!(is.character(`accession_version`) && length(`accession_version`) == 1)) {
          stop(paste("Error! Invalid data for `accession_version`. Must be a string:", `accession_version`))
        }
        self$`accession_version` <- `accession_version`
      }
      if (!is.null(`range`)) {
        stopifnot(is.vector(`range`), length(`range`) != 0)
        sapply(`range`, function(x) stopifnot(R6::is.R6(x)))
        self$`range` <- `range`
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
    #' @return V2reportsSeqRangeSet as a base R list.
    #' @examples
    #' # convert array of V2reportsSeqRangeSet (x) to a data frame
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
    #' Convert V2reportsSeqRangeSet to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsSeqRangeSetObject <- list()
      if (!is.null(self$`accession_version`)) {
        V2reportsSeqRangeSetObject[["accession_version"]] <-
          self$`accession_version`
      }
      if (!is.null(self$`range`)) {
        V2reportsSeqRangeSetObject[["range"]] <-
          lapply(self$`range`, function(x) x$toSimpleType())
      }
      return(V2reportsSeqRangeSetObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsSeqRangeSet
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsSeqRangeSet
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accession_version`)) {
        self$`accession_version` <- this_object$`accession_version`
      }
      if (!is.null(this_object$`range`)) {
        self$`range` <- ApiClient$new()$deserializeObj(this_object$`range`, "array[V2reportsRange]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsSeqRangeSet in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsSeqRangeSet
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsSeqRangeSet
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accession_version` <- this_object$`accession_version`
      self$`range` <- ApiClient$new()$deserializeObj(this_object$`range`, "array[V2reportsRange]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsSeqRangeSet and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsSeqRangeSet
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
# V2reportsSeqRangeSet$unlock()
#
## Below is an example to define the print function
# V2reportsSeqRangeSet$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsSeqRangeSet$lock()

