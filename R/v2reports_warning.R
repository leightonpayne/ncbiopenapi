#' Create a new V2reportsWarning
#'
#' @description
#' V2reportsWarning Class
#'
#' @docType class
#' @title V2reportsWarning
#' @description V2reportsWarning Class
#' @format An \code{R6Class} generator object
#' @field gene_warning_code  \link{V2reportsWarningGeneWarningCode} [optional]
#' @field reason  character [optional]
#' @field message  character [optional]
#' @field replaced_id  \link{V2reportsWarningReplacedId} [optional]
#' @field unrecognized_identifier  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsWarning <- R6::R6Class(
  "V2reportsWarning",
  public = list(
    `gene_warning_code` = NULL,
    `reason` = NULL,
    `message` = NULL,
    `replaced_id` = NULL,
    `unrecognized_identifier` = NULL,

    #' @description
    #' Initialize a new V2reportsWarning class.
    #'
    #' @param gene_warning_code gene_warning_code
    #' @param reason reason
    #' @param message message
    #' @param replaced_id replaced_id
    #' @param unrecognized_identifier unrecognized_identifier
    #' @param ... Other optional arguments.
    initialize = function(`gene_warning_code` = NULL, `reason` = NULL, `message` = NULL, `replaced_id` = NULL, `unrecognized_identifier` = NULL, ...) {
      if (!is.null(`gene_warning_code`)) {
        if (!(`gene_warning_code` %in% c())) {
          stop(paste("Error! \"", `gene_warning_code`, "\" cannot be assigned to `gene_warning_code`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`gene_warning_code`))
        self$`gene_warning_code` <- `gene_warning_code`
      }
      if (!is.null(`reason`)) {
        if (!(is.character(`reason`) && length(`reason`) == 1)) {
          stop(paste("Error! Invalid data for `reason`. Must be a string:", `reason`))
        }
        self$`reason` <- `reason`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`replaced_id`)) {
        stopifnot(R6::is.R6(`replaced_id`))
        self$`replaced_id` <- `replaced_id`
      }
      if (!is.null(`unrecognized_identifier`)) {
        if (!(is.character(`unrecognized_identifier`) && length(`unrecognized_identifier`) == 1)) {
          stop(paste("Error! Invalid data for `unrecognized_identifier`. Must be a string:", `unrecognized_identifier`))
        }
        self$`unrecognized_identifier` <- `unrecognized_identifier`
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
    #' @return V2reportsWarning as a base R list.
    #' @examples
    #' # convert array of V2reportsWarning (x) to a data frame
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
    #' Convert V2reportsWarning to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsWarningObject <- list()
      if (!is.null(self$`gene_warning_code`)) {
        V2reportsWarningObject[["gene_warning_code"]] <-
          self$`gene_warning_code`$toSimpleType()
      }
      if (!is.null(self$`reason`)) {
        V2reportsWarningObject[["reason"]] <-
          self$`reason`
      }
      if (!is.null(self$`message`)) {
        V2reportsWarningObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`replaced_id`)) {
        V2reportsWarningObject[["replaced_id"]] <-
          self$`replaced_id`$toSimpleType()
      }
      if (!is.null(self$`unrecognized_identifier`)) {
        V2reportsWarningObject[["unrecognized_identifier"]] <-
          self$`unrecognized_identifier`
      }
      return(V2reportsWarningObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsWarning
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsWarning
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gene_warning_code`)) {
        `gene_warning_code_object` <- V2reportsWarningGeneWarningCode$new()
        `gene_warning_code_object`$fromJSON(jsonlite::toJSON(this_object$`gene_warning_code`, auto_unbox = TRUE, digits = NA))
        self$`gene_warning_code` <- `gene_warning_code_object`
      }
      if (!is.null(this_object$`reason`)) {
        self$`reason` <- this_object$`reason`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`replaced_id`)) {
        `replaced_id_object` <- V2reportsWarningReplacedId$new()
        `replaced_id_object`$fromJSON(jsonlite::toJSON(this_object$`replaced_id`, auto_unbox = TRUE, digits = NA))
        self$`replaced_id` <- `replaced_id_object`
      }
      if (!is.null(this_object$`unrecognized_identifier`)) {
        self$`unrecognized_identifier` <- this_object$`unrecognized_identifier`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsWarning in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsWarning
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsWarning
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gene_warning_code` <- V2reportsWarningGeneWarningCode$new()$fromJSON(jsonlite::toJSON(this_object$`gene_warning_code`, auto_unbox = TRUE, digits = NA))
      self$`reason` <- this_object$`reason`
      self$`message` <- this_object$`message`
      self$`replaced_id` <- V2reportsWarningReplacedId$new()$fromJSON(jsonlite::toJSON(this_object$`replaced_id`, auto_unbox = TRUE, digits = NA))
      self$`unrecognized_identifier` <- this_object$`unrecognized_identifier`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsWarning and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsWarning
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
# V2reportsWarning$unlock()
#
## Below is an example to define the print function
# V2reportsWarning$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsWarning$lock()

