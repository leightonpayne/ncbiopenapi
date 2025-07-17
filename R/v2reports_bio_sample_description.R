#' Create a new V2reportsBioSampleDescription
#'
#' @description
#' V2reportsBioSampleDescription Class
#'
#' @docType class
#' @title V2reportsBioSampleDescription
#' @description V2reportsBioSampleDescription Class
#' @format An \code{R6Class} generator object
#' @field title  character [optional]
#' @field organism  \link{V2reportsOrganism} [optional]
#' @field comment  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsBioSampleDescription <- R6::R6Class(
  "V2reportsBioSampleDescription",
  public = list(
    `title` = NULL,
    `organism` = NULL,
    `comment` = NULL,

    #' @description
    #' Initialize a new V2reportsBioSampleDescription class.
    #'
    #' @param title title
    #' @param organism organism
    #' @param comment comment
    #' @param ... Other optional arguments.
    initialize = function(`title` = NULL, `organism` = NULL, `comment` = NULL, ...) {
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`organism`)) {
        stopifnot(R6::is.R6(`organism`))
        self$`organism` <- `organism`
      }
      if (!is.null(`comment`)) {
        if (!(is.character(`comment`) && length(`comment`) == 1)) {
          stop(paste("Error! Invalid data for `comment`. Must be a string:", `comment`))
        }
        self$`comment` <- `comment`
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
    #' @return V2reportsBioSampleDescription as a base R list.
    #' @examples
    #' # convert array of V2reportsBioSampleDescription (x) to a data frame
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
    #' Convert V2reportsBioSampleDescription to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsBioSampleDescriptionObject <- list()
      if (!is.null(self$`title`)) {
        V2reportsBioSampleDescriptionObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`organism`)) {
        V2reportsBioSampleDescriptionObject[["organism"]] <-
          self$`organism`$toSimpleType()
      }
      if (!is.null(self$`comment`)) {
        V2reportsBioSampleDescriptionObject[["comment"]] <-
          self$`comment`
      }
      return(V2reportsBioSampleDescriptionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsBioSampleDescription
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsBioSampleDescription
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`organism`)) {
        `organism_object` <- V2reportsOrganism$new()
        `organism_object`$fromJSON(jsonlite::toJSON(this_object$`organism`, auto_unbox = TRUE, digits = NA))
        self$`organism` <- `organism_object`
      }
      if (!is.null(this_object$`comment`)) {
        self$`comment` <- this_object$`comment`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsBioSampleDescription in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsBioSampleDescription
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsBioSampleDescription
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`title` <- this_object$`title`
      self$`organism` <- V2reportsOrganism$new()$fromJSON(jsonlite::toJSON(this_object$`organism`, auto_unbox = TRUE, digits = NA))
      self$`comment` <- this_object$`comment`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsBioSampleDescription and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsBioSampleDescription
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
# V2reportsBioSampleDescription$unlock()
#
## Below is an example to define the print function
# V2reportsBioSampleDescription$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsBioSampleDescription$lock()

