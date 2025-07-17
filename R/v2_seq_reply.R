#' Create a new V2SeqReply
#'
#' @description
#' V2SeqReply Class
#'
#' @docType class
#' @title V2SeqReply
#' @description V2SeqReply Class
#' @format An \code{R6Class} generator object
#' @field accession  character [optional]
#' @field seq_length  character [optional]
#' @field mol_type  \link{V2MolType} [optional]
#' @field defline  character [optional]
#' @field sequence  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2SeqReply <- R6::R6Class(
  "V2SeqReply",
  public = list(
    `accession` = NULL,
    `seq_length` = NULL,
    `mol_type` = NULL,
    `defline` = NULL,
    `sequence` = NULL,

    #' @description
    #' Initialize a new V2SeqReply class.
    #'
    #' @param accession accession
    #' @param seq_length seq_length
    #' @param mol_type mol_type
    #' @param defline defline
    #' @param sequence sequence
    #' @param ... Other optional arguments.
    initialize = function(`accession` = NULL, `seq_length` = NULL, `mol_type` = NULL, `defline` = NULL, `sequence` = NULL, ...) {
      if (!is.null(`accession`)) {
        if (!(is.character(`accession`) && length(`accession`) == 1)) {
          stop(paste("Error! Invalid data for `accession`. Must be a string:", `accession`))
        }
        self$`accession` <- `accession`
      }
      if (!is.null(`seq_length`)) {
        if (!(is.character(`seq_length`) && length(`seq_length`) == 1)) {
          stop(paste("Error! Invalid data for `seq_length`. Must be a string:", `seq_length`))
        }
        self$`seq_length` <- `seq_length`
      }
      if (!is.null(`mol_type`)) {
        if (!(`mol_type` %in% c())) {
          stop(paste("Error! \"", `mol_type`, "\" cannot be assigned to `mol_type`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`mol_type`))
        self$`mol_type` <- `mol_type`
      }
      if (!is.null(`defline`)) {
        if (!(is.character(`defline`) && length(`defline`) == 1)) {
          stop(paste("Error! Invalid data for `defline`. Must be a string:", `defline`))
        }
        self$`defline` <- `defline`
      }
      if (!is.null(`sequence`)) {
        if (!(is.character(`sequence`) && length(`sequence`) == 1)) {
          stop(paste("Error! Invalid data for `sequence`. Must be a string:", `sequence`))
        }
        self$`sequence` <- `sequence`
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
    #' @return V2SeqReply as a base R list.
    #' @examples
    #' # convert array of V2SeqReply (x) to a data frame
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
    #' Convert V2SeqReply to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2SeqReplyObject <- list()
      if (!is.null(self$`accession`)) {
        V2SeqReplyObject[["accession"]] <-
          self$`accession`
      }
      if (!is.null(self$`seq_length`)) {
        V2SeqReplyObject[["seq_length"]] <-
          self$`seq_length`
      }
      if (!is.null(self$`mol_type`)) {
        V2SeqReplyObject[["mol_type"]] <-
          self$`mol_type`$toSimpleType()
      }
      if (!is.null(self$`defline`)) {
        V2SeqReplyObject[["defline"]] <-
          self$`defline`
      }
      if (!is.null(self$`sequence`)) {
        V2SeqReplyObject[["sequence"]] <-
          self$`sequence`
      }
      return(V2SeqReplyObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2SeqReply
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2SeqReply
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accession`)) {
        self$`accession` <- this_object$`accession`
      }
      if (!is.null(this_object$`seq_length`)) {
        self$`seq_length` <- this_object$`seq_length`
      }
      if (!is.null(this_object$`mol_type`)) {
        `mol_type_object` <- V2MolType$new()
        `mol_type_object`$fromJSON(jsonlite::toJSON(this_object$`mol_type`, auto_unbox = TRUE, digits = NA))
        self$`mol_type` <- `mol_type_object`
      }
      if (!is.null(this_object$`defline`)) {
        self$`defline` <- this_object$`defline`
      }
      if (!is.null(this_object$`sequence`)) {
        self$`sequence` <- this_object$`sequence`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2SeqReply in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2SeqReply
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2SeqReply
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accession` <- this_object$`accession`
      self$`seq_length` <- this_object$`seq_length`
      self$`mol_type` <- V2MolType$new()$fromJSON(jsonlite::toJSON(this_object$`mol_type`, auto_unbox = TRUE, digits = NA))
      self$`defline` <- this_object$`defline`
      self$`sequence` <- this_object$`sequence`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2SeqReply and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2SeqReply
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
# V2SeqReply$unlock()
#
## Below is an example to define the print function
# V2SeqReply$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2SeqReply$lock()

