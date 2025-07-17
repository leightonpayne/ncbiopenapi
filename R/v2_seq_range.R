#' Create a new V2SeqRange
#'
#' @description
#' V2SeqRange Class
#'
#' @docType class
#' @title V2SeqRange
#' @description V2SeqRange Class
#' @format An \code{R6Class} generator object
#' @field accession  character [optional]
#' @field begin  character [optional]
#' @field end  character [optional]
#' @field orientation  \link{V2reportsOrientation} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2SeqRange <- R6::R6Class(
  "V2SeqRange",
  public = list(
    `accession` = NULL,
    `begin` = NULL,
    `end` = NULL,
    `orientation` = NULL,

    #' @description
    #' Initialize a new V2SeqRange class.
    #'
    #' @param accession accession
    #' @param begin begin
    #' @param end end
    #' @param orientation orientation
    #' @param ... Other optional arguments.
    initialize = function(`accession` = NULL, `begin` = NULL, `end` = NULL, `orientation` = NULL, ...) {
      if (!is.null(`accession`)) {
        if (!(is.character(`accession`) && length(`accession`) == 1)) {
          stop(paste("Error! Invalid data for `accession`. Must be a string:", `accession`))
        }
        self$`accession` <- `accession`
      }
      if (!is.null(`begin`)) {
        if (!(is.character(`begin`) && length(`begin`) == 1)) {
          stop(paste("Error! Invalid data for `begin`. Must be a string:", `begin`))
        }
        self$`begin` <- `begin`
      }
      if (!is.null(`end`)) {
        if (!(is.character(`end`) && length(`end`) == 1)) {
          stop(paste("Error! Invalid data for `end`. Must be a string:", `end`))
        }
        self$`end` <- `end`
      }
      if (!is.null(`orientation`)) {
        if (!(`orientation` %in% c())) {
          stop(paste("Error! \"", `orientation`, "\" cannot be assigned to `orientation`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`orientation`))
        self$`orientation` <- `orientation`
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
    #' @return V2SeqRange as a base R list.
    #' @examples
    #' # convert array of V2SeqRange (x) to a data frame
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
    #' Convert V2SeqRange to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2SeqRangeObject <- list()
      if (!is.null(self$`accession`)) {
        V2SeqRangeObject[["accession"]] <-
          self$`accession`
      }
      if (!is.null(self$`begin`)) {
        V2SeqRangeObject[["begin"]] <-
          self$`begin`
      }
      if (!is.null(self$`end`)) {
        V2SeqRangeObject[["end"]] <-
          self$`end`
      }
      if (!is.null(self$`orientation`)) {
        V2SeqRangeObject[["orientation"]] <-
          self$`orientation`$toSimpleType()
      }
      return(V2SeqRangeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2SeqRange
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2SeqRange
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accession`)) {
        self$`accession` <- this_object$`accession`
      }
      if (!is.null(this_object$`begin`)) {
        self$`begin` <- this_object$`begin`
      }
      if (!is.null(this_object$`end`)) {
        self$`end` <- this_object$`end`
      }
      if (!is.null(this_object$`orientation`)) {
        `orientation_object` <- V2reportsOrientation$new()
        `orientation_object`$fromJSON(jsonlite::toJSON(this_object$`orientation`, auto_unbox = TRUE, digits = NA))
        self$`orientation` <- `orientation_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2SeqRange in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2SeqRange
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2SeqRange
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accession` <- this_object$`accession`
      self$`begin` <- this_object$`begin`
      self$`end` <- this_object$`end`
      self$`orientation` <- V2reportsOrientation$new()$fromJSON(jsonlite::toJSON(this_object$`orientation`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2SeqRange and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2SeqRange
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
# V2SeqRange$unlock()
#
## Below is an example to define the print function
# V2SeqRange$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2SeqRange$lock()

