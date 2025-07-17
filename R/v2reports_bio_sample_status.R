#' Create a new V2reportsBioSampleStatus
#'
#' @description
#' V2reportsBioSampleStatus Class
#'
#' @docType class
#' @title V2reportsBioSampleStatus
#' @description V2reportsBioSampleStatus Class
#' @format An \code{R6Class} generator object
#' @field status  character [optional]
#' @field when  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsBioSampleStatus <- R6::R6Class(
  "V2reportsBioSampleStatus",
  public = list(
    `status` = NULL,
    `when` = NULL,

    #' @description
    #' Initialize a new V2reportsBioSampleStatus class.
    #'
    #' @param status status
    #' @param when when
    #' @param ... Other optional arguments.
    initialize = function(`status` = NULL, `when` = NULL, ...) {
      if (!is.null(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`when`)) {
        if (!(is.character(`when`) && length(`when`) == 1)) {
          stop(paste("Error! Invalid data for `when`. Must be a string:", `when`))
        }
        self$`when` <- `when`
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
    #' @return V2reportsBioSampleStatus as a base R list.
    #' @examples
    #' # convert array of V2reportsBioSampleStatus (x) to a data frame
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
    #' Convert V2reportsBioSampleStatus to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsBioSampleStatusObject <- list()
      if (!is.null(self$`status`)) {
        V2reportsBioSampleStatusObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`when`)) {
        V2reportsBioSampleStatusObject[["when"]] <-
          self$`when`
      }
      return(V2reportsBioSampleStatusObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsBioSampleStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsBioSampleStatus
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`when`)) {
        self$`when` <- this_object$`when`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsBioSampleStatus in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsBioSampleStatus
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsBioSampleStatus
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`status` <- this_object$`status`
      self$`when` <- this_object$`when`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsBioSampleStatus and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsBioSampleStatus
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
# V2reportsBioSampleStatus$unlock()
#
## Below is an example to define the print function
# V2reportsBioSampleStatus$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsBioSampleStatus$lock()

