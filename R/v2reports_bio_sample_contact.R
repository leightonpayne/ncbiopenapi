#' Create a new V2reportsBioSampleContact
#'
#' @description
#' V2reportsBioSampleContact Class
#'
#' @docType class
#' @title V2reportsBioSampleContact
#' @description V2reportsBioSampleContact Class
#' @format An \code{R6Class} generator object
#' @field lab  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsBioSampleContact <- R6::R6Class(
  "V2reportsBioSampleContact",
  public = list(
    `lab` = NULL,

    #' @description
    #' Initialize a new V2reportsBioSampleContact class.
    #'
    #' @param lab lab
    #' @param ... Other optional arguments.
    initialize = function(`lab` = NULL, ...) {
      if (!is.null(`lab`)) {
        if (!(is.character(`lab`) && length(`lab`) == 1)) {
          stop(paste("Error! Invalid data for `lab`. Must be a string:", `lab`))
        }
        self$`lab` <- `lab`
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
    #' @return V2reportsBioSampleContact as a base R list.
    #' @examples
    #' # convert array of V2reportsBioSampleContact (x) to a data frame
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
    #' Convert V2reportsBioSampleContact to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsBioSampleContactObject <- list()
      if (!is.null(self$`lab`)) {
        V2reportsBioSampleContactObject[["lab"]] <-
          self$`lab`
      }
      return(V2reportsBioSampleContactObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsBioSampleContact
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsBioSampleContact
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`lab`)) {
        self$`lab` <- this_object$`lab`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsBioSampleContact in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsBioSampleContact
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsBioSampleContact
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`lab` <- this_object$`lab`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsBioSampleContact and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsBioSampleContact
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
# V2reportsBioSampleContact$unlock()
#
## Below is an example to define the print function
# V2reportsBioSampleContact$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsBioSampleContact$lock()

