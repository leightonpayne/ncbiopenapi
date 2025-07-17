#' Create a new V2reportsIsolate
#'
#' @description
#' V2reportsIsolate Class
#'
#' @docType class
#' @title V2reportsIsolate
#' @description V2reportsIsolate Class
#' @format An \code{R6Class} generator object
#' @field name  character [optional]
#' @field source  character [optional]
#' @field collection_date  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsIsolate <- R6::R6Class(
  "V2reportsIsolate",
  public = list(
    `name` = NULL,
    `source` = NULL,
    `collection_date` = NULL,

    #' @description
    #' Initialize a new V2reportsIsolate class.
    #'
    #' @param name name
    #' @param source source
    #' @param collection_date collection_date
    #' @param ... Other optional arguments.
    initialize = function(`name` = NULL, `source` = NULL, `collection_date` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!is.null(`collection_date`)) {
        if (!(is.character(`collection_date`) && length(`collection_date`) == 1)) {
          stop(paste("Error! Invalid data for `collection_date`. Must be a string:", `collection_date`))
        }
        self$`collection_date` <- `collection_date`
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
    #' @return V2reportsIsolate as a base R list.
    #' @examples
    #' # convert array of V2reportsIsolate (x) to a data frame
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
    #' Convert V2reportsIsolate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsIsolateObject <- list()
      if (!is.null(self$`name`)) {
        V2reportsIsolateObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`source`)) {
        V2reportsIsolateObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`collection_date`)) {
        V2reportsIsolateObject[["collection_date"]] <-
          self$`collection_date`
      }
      return(V2reportsIsolateObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsIsolate
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsIsolate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`collection_date`)) {
        self$`collection_date` <- this_object$`collection_date`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsIsolate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsIsolate
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsIsolate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`source` <- this_object$`source`
      self$`collection_date` <- this_object$`collection_date`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsIsolate and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsIsolate
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
# V2reportsIsolate$unlock()
#
## Below is an example to define the print function
# V2reportsIsolate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsIsolate$lock()

