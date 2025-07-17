#' Create a new V2reportsNameAndAuthorityNote
#'
#' @description
#' V2reportsNameAndAuthorityNote Class
#'
#' @docType class
#' @title V2reportsNameAndAuthorityNote
#' @description V2reportsNameAndAuthorityNote Class
#' @format An \code{R6Class} generator object
#' @field name  character [optional]
#' @field note  character [optional]
#' @field note_classifier  \link{V2reportsNameAndAuthorityNoteClassifier} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsNameAndAuthorityNote <- R6::R6Class(
  "V2reportsNameAndAuthorityNote",
  public = list(
    `name` = NULL,
    `note` = NULL,
    `note_classifier` = NULL,

    #' @description
    #' Initialize a new V2reportsNameAndAuthorityNote class.
    #'
    #' @param name name
    #' @param note note
    #' @param note_classifier note_classifier
    #' @param ... Other optional arguments.
    initialize = function(`name` = NULL, `note` = NULL, `note_classifier` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`note`)) {
        if (!(is.character(`note`) && length(`note`) == 1)) {
          stop(paste("Error! Invalid data for `note`. Must be a string:", `note`))
        }
        self$`note` <- `note`
      }
      if (!is.null(`note_classifier`)) {
        if (!(`note_classifier` %in% c())) {
          stop(paste("Error! \"", `note_classifier`, "\" cannot be assigned to `note_classifier`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`note_classifier`))
        self$`note_classifier` <- `note_classifier`
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
    #' @return V2reportsNameAndAuthorityNote as a base R list.
    #' @examples
    #' # convert array of V2reportsNameAndAuthorityNote (x) to a data frame
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
    #' Convert V2reportsNameAndAuthorityNote to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsNameAndAuthorityNoteObject <- list()
      if (!is.null(self$`name`)) {
        V2reportsNameAndAuthorityNoteObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`note`)) {
        V2reportsNameAndAuthorityNoteObject[["note"]] <-
          self$`note`
      }
      if (!is.null(self$`note_classifier`)) {
        V2reportsNameAndAuthorityNoteObject[["note_classifier"]] <-
          self$`note_classifier`$toSimpleType()
      }
      return(V2reportsNameAndAuthorityNoteObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsNameAndAuthorityNote
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsNameAndAuthorityNote
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`note`)) {
        self$`note` <- this_object$`note`
      }
      if (!is.null(this_object$`note_classifier`)) {
        `note_classifier_object` <- V2reportsNameAndAuthorityNoteClassifier$new()
        `note_classifier_object`$fromJSON(jsonlite::toJSON(this_object$`note_classifier`, auto_unbox = TRUE, digits = NA))
        self$`note_classifier` <- `note_classifier_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsNameAndAuthorityNote in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsNameAndAuthorityNote
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsNameAndAuthorityNote
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`note` <- this_object$`note`
      self$`note_classifier` <- V2reportsNameAndAuthorityNoteClassifier$new()$fromJSON(jsonlite::toJSON(this_object$`note_classifier`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsNameAndAuthorityNote and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsNameAndAuthorityNote
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
# V2reportsNameAndAuthorityNote$unlock()
#
## Below is an example to define the print function
# V2reportsNameAndAuthorityNote$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsNameAndAuthorityNote$lock()

