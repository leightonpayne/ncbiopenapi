#' Create a new V2reportsSeqRangeSetFasta
#'
#' @description
#' V2reportsSeqRangeSetFasta Class
#'
#' @docType class
#' @title V2reportsSeqRangeSetFasta
#' @description V2reportsSeqRangeSetFasta Class
#' @format An \code{R6Class} generator object
#' @field seq_id  character [optional]
#' @field accession_version  character [optional]
#' @field title  character [optional]
#' @field sequence_hash  character [optional]
#' @field range  list(\link{V2reportsRange}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsSeqRangeSetFasta <- R6::R6Class(
  "V2reportsSeqRangeSetFasta",
  public = list(
    `seq_id` = NULL,
    `accession_version` = NULL,
    `title` = NULL,
    `sequence_hash` = NULL,
    `range` = NULL,

    #' @description
    #' Initialize a new V2reportsSeqRangeSetFasta class.
    #'
    #' @param seq_id seq_id
    #' @param accession_version accession_version
    #' @param title title
    #' @param sequence_hash sequence_hash
    #' @param range range
    #' @param ... Other optional arguments.
    initialize = function(`seq_id` = NULL, `accession_version` = NULL, `title` = NULL, `sequence_hash` = NULL, `range` = NULL, ...) {
      if (!is.null(`seq_id`)) {
        if (!(is.character(`seq_id`) && length(`seq_id`) == 1)) {
          stop(paste("Error! Invalid data for `seq_id`. Must be a string:", `seq_id`))
        }
        self$`seq_id` <- `seq_id`
      }
      if (!is.null(`accession_version`)) {
        if (!(is.character(`accession_version`) && length(`accession_version`) == 1)) {
          stop(paste("Error! Invalid data for `accession_version`. Must be a string:", `accession_version`))
        }
        self$`accession_version` <- `accession_version`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`sequence_hash`)) {
        if (!(is.character(`sequence_hash`) && length(`sequence_hash`) == 1)) {
          stop(paste("Error! Invalid data for `sequence_hash`. Must be a string:", `sequence_hash`))
        }
        self$`sequence_hash` <- `sequence_hash`
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
    #' @return V2reportsSeqRangeSetFasta as a base R list.
    #' @examples
    #' # convert array of V2reportsSeqRangeSetFasta (x) to a data frame
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
    #' Convert V2reportsSeqRangeSetFasta to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsSeqRangeSetFastaObject <- list()
      if (!is.null(self$`seq_id`)) {
        V2reportsSeqRangeSetFastaObject[["seq_id"]] <-
          self$`seq_id`
      }
      if (!is.null(self$`accession_version`)) {
        V2reportsSeqRangeSetFastaObject[["accession_version"]] <-
          self$`accession_version`
      }
      if (!is.null(self$`title`)) {
        V2reportsSeqRangeSetFastaObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`sequence_hash`)) {
        V2reportsSeqRangeSetFastaObject[["sequence_hash"]] <-
          self$`sequence_hash`
      }
      if (!is.null(self$`range`)) {
        V2reportsSeqRangeSetFastaObject[["range"]] <-
          lapply(self$`range`, function(x) x$toSimpleType())
      }
      return(V2reportsSeqRangeSetFastaObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsSeqRangeSetFasta
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsSeqRangeSetFasta
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`seq_id`)) {
        self$`seq_id` <- this_object$`seq_id`
      }
      if (!is.null(this_object$`accession_version`)) {
        self$`accession_version` <- this_object$`accession_version`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`sequence_hash`)) {
        self$`sequence_hash` <- this_object$`sequence_hash`
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
    #' @return V2reportsSeqRangeSetFasta in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsSeqRangeSetFasta
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsSeqRangeSetFasta
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`seq_id` <- this_object$`seq_id`
      self$`accession_version` <- this_object$`accession_version`
      self$`title` <- this_object$`title`
      self$`sequence_hash` <- this_object$`sequence_hash`
      self$`range` <- ApiClient$new()$deserializeObj(this_object$`range`, "array[V2reportsRange]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsSeqRangeSetFasta and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsSeqRangeSetFasta
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
# V2reportsSeqRangeSetFasta$unlock()
#
## Below is an example to define the print function
# V2reportsSeqRangeSetFasta$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsSeqRangeSetFasta$lock()

