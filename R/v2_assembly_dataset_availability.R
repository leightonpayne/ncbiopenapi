#' Create a new V2AssemblyDatasetAvailability
#'
#' @description
#' V2AssemblyDatasetAvailability Class
#'
#' @docType class
#' @title V2AssemblyDatasetAvailability
#' @description V2AssemblyDatasetAvailability Class
#' @format An \code{R6Class} generator object
#' @field valid_assemblies  list(character) [optional]
#' @field invalid_assemblies  list(character) [optional]
#' @field reason  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2AssemblyDatasetAvailability <- R6::R6Class(
  "V2AssemblyDatasetAvailability",
  public = list(
    `valid_assemblies` = NULL,
    `invalid_assemblies` = NULL,
    `reason` = NULL,

    #' @description
    #' Initialize a new V2AssemblyDatasetAvailability class.
    #'
    #' @param valid_assemblies valid_assemblies
    #' @param invalid_assemblies invalid_assemblies
    #' @param reason reason
    #' @param ... Other optional arguments.
    initialize = function(`valid_assemblies` = NULL, `invalid_assemblies` = NULL, `reason` = NULL, ...) {
      if (!is.null(`valid_assemblies`)) {
        stopifnot(is.vector(`valid_assemblies`), length(`valid_assemblies`) != 0)
        sapply(`valid_assemblies`, function(x) stopifnot(is.character(x)))
        self$`valid_assemblies` <- `valid_assemblies`
      }
      if (!is.null(`invalid_assemblies`)) {
        stopifnot(is.vector(`invalid_assemblies`), length(`invalid_assemblies`) != 0)
        sapply(`invalid_assemblies`, function(x) stopifnot(is.character(x)))
        self$`invalid_assemblies` <- `invalid_assemblies`
      }
      if (!is.null(`reason`)) {
        if (!(is.character(`reason`) && length(`reason`) == 1)) {
          stop(paste("Error! Invalid data for `reason`. Must be a string:", `reason`))
        }
        self$`reason` <- `reason`
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
    #' @return V2AssemblyDatasetAvailability as a base R list.
    #' @examples
    #' # convert array of V2AssemblyDatasetAvailability (x) to a data frame
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
    #' Convert V2AssemblyDatasetAvailability to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2AssemblyDatasetAvailabilityObject <- list()
      if (!is.null(self$`valid_assemblies`)) {
        V2AssemblyDatasetAvailabilityObject[["valid_assemblies"]] <-
          self$`valid_assemblies`
      }
      if (!is.null(self$`invalid_assemblies`)) {
        V2AssemblyDatasetAvailabilityObject[["invalid_assemblies"]] <-
          self$`invalid_assemblies`
      }
      if (!is.null(self$`reason`)) {
        V2AssemblyDatasetAvailabilityObject[["reason"]] <-
          self$`reason`
      }
      return(V2AssemblyDatasetAvailabilityObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2AssemblyDatasetAvailability
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2AssemblyDatasetAvailability
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`valid_assemblies`)) {
        self$`valid_assemblies` <- ApiClient$new()$deserializeObj(this_object$`valid_assemblies`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`invalid_assemblies`)) {
        self$`invalid_assemblies` <- ApiClient$new()$deserializeObj(this_object$`invalid_assemblies`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`reason`)) {
        self$`reason` <- this_object$`reason`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2AssemblyDatasetAvailability in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2AssemblyDatasetAvailability
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2AssemblyDatasetAvailability
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`valid_assemblies` <- ApiClient$new()$deserializeObj(this_object$`valid_assemblies`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`invalid_assemblies` <- ApiClient$new()$deserializeObj(this_object$`invalid_assemblies`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`reason` <- this_object$`reason`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2AssemblyDatasetAvailability and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2AssemblyDatasetAvailability
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
# V2AssemblyDatasetAvailability$unlock()
#
## Below is an example to define the print function
# V2AssemblyDatasetAvailability$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2AssemblyDatasetAvailability$lock()

