#' Create a new V2reportsBioSampleOwner
#'
#' @description
#' V2reportsBioSampleOwner Class
#'
#' @docType class
#' @title V2reportsBioSampleOwner
#' @description V2reportsBioSampleOwner Class
#' @format An \code{R6Class} generator object
#' @field name  character [optional]
#' @field contacts  list(\link{V2reportsBioSampleContact}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsBioSampleOwner <- R6::R6Class(
  "V2reportsBioSampleOwner",
  public = list(
    `name` = NULL,
    `contacts` = NULL,

    #' @description
    #' Initialize a new V2reportsBioSampleOwner class.
    #'
    #' @param name name
    #' @param contacts contacts
    #' @param ... Other optional arguments.
    initialize = function(`name` = NULL, `contacts` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`contacts`)) {
        stopifnot(is.vector(`contacts`), length(`contacts`) != 0)
        sapply(`contacts`, function(x) stopifnot(R6::is.R6(x)))
        self$`contacts` <- `contacts`
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
    #' @return V2reportsBioSampleOwner as a base R list.
    #' @examples
    #' # convert array of V2reportsBioSampleOwner (x) to a data frame
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
    #' Convert V2reportsBioSampleOwner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsBioSampleOwnerObject <- list()
      if (!is.null(self$`name`)) {
        V2reportsBioSampleOwnerObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`contacts`)) {
        V2reportsBioSampleOwnerObject[["contacts"]] <-
          lapply(self$`contacts`, function(x) x$toSimpleType())
      }
      return(V2reportsBioSampleOwnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsBioSampleOwner
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsBioSampleOwner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`contacts`)) {
        self$`contacts` <- ApiClient$new()$deserializeObj(this_object$`contacts`, "array[V2reportsBioSampleContact]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsBioSampleOwner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsBioSampleOwner
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsBioSampleOwner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`contacts` <- ApiClient$new()$deserializeObj(this_object$`contacts`, "array[V2reportsBioSampleContact]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsBioSampleOwner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsBioSampleOwner
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
# V2reportsBioSampleOwner$unlock()
#
## Below is an example to define the print function
# V2reportsBioSampleOwner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsBioSampleOwner$lock()

