#' Create a new V2reportsGeneGroup
#'
#' @description
#' V2reportsGeneGroup Class
#'
#' @docType class
#' @title V2reportsGeneGroup
#' @description V2reportsGeneGroup Class
#' @format An \code{R6Class} generator object
#' @field id  character [optional]
#' @field method  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsGeneGroup <- R6::R6Class(
  "V2reportsGeneGroup",
  public = list(
    `id` = NULL,
    `method` = NULL,

    #' @description
    #' Initialize a new V2reportsGeneGroup class.
    #'
    #' @param id id
    #' @param method method
    #' @param ... Other optional arguments.
    initialize = function(`id` = NULL, `method` = NULL, ...) {
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`method`)) {
        if (!(is.character(`method`) && length(`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", `method`))
        }
        self$`method` <- `method`
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
    #' @return V2reportsGeneGroup as a base R list.
    #' @examples
    #' # convert array of V2reportsGeneGroup (x) to a data frame
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
    #' Convert V2reportsGeneGroup to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsGeneGroupObject <- list()
      if (!is.null(self$`id`)) {
        V2reportsGeneGroupObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`method`)) {
        V2reportsGeneGroupObject[["method"]] <-
          self$`method`
      }
      return(V2reportsGeneGroupObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsGeneGroup
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsGeneGroup
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`method`)) {
        self$`method` <- this_object$`method`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsGeneGroup in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsGeneGroup
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsGeneGroup
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`method` <- this_object$`method`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsGeneGroup and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsGeneGroup
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
# V2reportsGeneGroup$unlock()
#
## Below is an example to define the print function
# V2reportsGeneGroup$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsGeneGroup$lock()

