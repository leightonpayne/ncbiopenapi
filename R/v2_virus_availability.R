#' Create a new V2VirusAvailability
#'
#' @description
#' V2VirusAvailability Class
#'
#' @docType class
#' @title V2VirusAvailability
#' @description V2VirusAvailability Class
#' @format An \code{R6Class} generator object
#' @field valid_accessions  list(character) [optional]
#' @field invalid_accessions  list(character) [optional]
#' @field message  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2VirusAvailability <- R6::R6Class(
  "V2VirusAvailability",
  public = list(
    `valid_accessions` = NULL,
    `invalid_accessions` = NULL,
    `message` = NULL,

    #' @description
    #' Initialize a new V2VirusAvailability class.
    #'
    #' @param valid_accessions valid_accessions
    #' @param invalid_accessions invalid_accessions
    #' @param message message
    #' @param ... Other optional arguments.
    initialize = function(`valid_accessions` = NULL, `invalid_accessions` = NULL, `message` = NULL, ...) {
      if (!is.null(`valid_accessions`)) {
        stopifnot(is.vector(`valid_accessions`), length(`valid_accessions`) != 0)
        sapply(`valid_accessions`, function(x) stopifnot(is.character(x)))
        self$`valid_accessions` <- `valid_accessions`
      }
      if (!is.null(`invalid_accessions`)) {
        stopifnot(is.vector(`invalid_accessions`), length(`invalid_accessions`) != 0)
        sapply(`invalid_accessions`, function(x) stopifnot(is.character(x)))
        self$`invalid_accessions` <- `invalid_accessions`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
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
    #' @return V2VirusAvailability as a base R list.
    #' @examples
    #' # convert array of V2VirusAvailability (x) to a data frame
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
    #' Convert V2VirusAvailability to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2VirusAvailabilityObject <- list()
      if (!is.null(self$`valid_accessions`)) {
        V2VirusAvailabilityObject[["valid_accessions"]] <-
          self$`valid_accessions`
      }
      if (!is.null(self$`invalid_accessions`)) {
        V2VirusAvailabilityObject[["invalid_accessions"]] <-
          self$`invalid_accessions`
      }
      if (!is.null(self$`message`)) {
        V2VirusAvailabilityObject[["message"]] <-
          self$`message`
      }
      return(V2VirusAvailabilityObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2VirusAvailability
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2VirusAvailability
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`valid_accessions`)) {
        self$`valid_accessions` <- ApiClient$new()$deserializeObj(this_object$`valid_accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`invalid_accessions`)) {
        self$`invalid_accessions` <- ApiClient$new()$deserializeObj(this_object$`invalid_accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2VirusAvailability in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2VirusAvailability
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2VirusAvailability
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid_accessions` <- ApiClient$new()$deserializeObj(this_object$`valid_accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`invalid_accessions` <- ApiClient$new()$deserializeObj(this_object$`invalid_accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`message` <- this_object$`message`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2VirusAvailability and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2VirusAvailability
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
# V2VirusAvailability$unlock()
#
## Below is an example to define the print function
# V2VirusAvailability$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2VirusAvailability$lock()

