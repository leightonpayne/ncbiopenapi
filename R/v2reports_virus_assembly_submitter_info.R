#' Create a new V2reportsVirusAssemblySubmitterInfo
#'
#' @description
#' V2reportsVirusAssemblySubmitterInfo Class
#'
#' @docType class
#' @title V2reportsVirusAssemblySubmitterInfo
#' @description V2reportsVirusAssemblySubmitterInfo Class
#' @format An \code{R6Class} generator object
#' @field names  list(character) [optional]
#' @field affiliation  character [optional]
#' @field country  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsVirusAssemblySubmitterInfo <- R6::R6Class(
  "V2reportsVirusAssemblySubmitterInfo",
  public = list(
    `names` = NULL,
    `affiliation` = NULL,
    `country` = NULL,

    #' @description
    #' Initialize a new V2reportsVirusAssemblySubmitterInfo class.
    #'
    #' @param names names
    #' @param affiliation affiliation
    #' @param country country
    #' @param ... Other optional arguments.
    initialize = function(`names` = NULL, `affiliation` = NULL, `country` = NULL, ...) {
      if (!is.null(`names`)) {
        stopifnot(is.vector(`names`), length(`names`) != 0)
        sapply(`names`, function(x) stopifnot(is.character(x)))
        self$`names` <- `names`
      }
      if (!is.null(`affiliation`)) {
        if (!(is.character(`affiliation`) && length(`affiliation`) == 1)) {
          stop(paste("Error! Invalid data for `affiliation`. Must be a string:", `affiliation`))
        }
        self$`affiliation` <- `affiliation`
      }
      if (!is.null(`country`)) {
        if (!(is.character(`country`) && length(`country`) == 1)) {
          stop(paste("Error! Invalid data for `country`. Must be a string:", `country`))
        }
        self$`country` <- `country`
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
    #' @return V2reportsVirusAssemblySubmitterInfo as a base R list.
    #' @examples
    #' # convert array of V2reportsVirusAssemblySubmitterInfo (x) to a data frame
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
    #' Convert V2reportsVirusAssemblySubmitterInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsVirusAssemblySubmitterInfoObject <- list()
      if (!is.null(self$`names`)) {
        V2reportsVirusAssemblySubmitterInfoObject[["names"]] <-
          self$`names`
      }
      if (!is.null(self$`affiliation`)) {
        V2reportsVirusAssemblySubmitterInfoObject[["affiliation"]] <-
          self$`affiliation`
      }
      if (!is.null(self$`country`)) {
        V2reportsVirusAssemblySubmitterInfoObject[["country"]] <-
          self$`country`
      }
      return(V2reportsVirusAssemblySubmitterInfoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsVirusAssemblySubmitterInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsVirusAssemblySubmitterInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`names`)) {
        self$`names` <- ApiClient$new()$deserializeObj(this_object$`names`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`affiliation`)) {
        self$`affiliation` <- this_object$`affiliation`
      }
      if (!is.null(this_object$`country`)) {
        self$`country` <- this_object$`country`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsVirusAssemblySubmitterInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsVirusAssemblySubmitterInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsVirusAssemblySubmitterInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`names` <- ApiClient$new()$deserializeObj(this_object$`names`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`affiliation` <- this_object$`affiliation`
      self$`country` <- this_object$`country`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsVirusAssemblySubmitterInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsVirusAssemblySubmitterInfo
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
# V2reportsVirusAssemblySubmitterInfo$unlock()
#
## Below is an example to define the print function
# V2reportsVirusAssemblySubmitterInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsVirusAssemblySubmitterInfo$lock()

