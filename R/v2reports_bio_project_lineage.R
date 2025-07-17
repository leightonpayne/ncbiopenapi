#' Create a new V2reportsBioProjectLineage
#'
#' @description
#' V2reportsBioProjectLineage Class
#'
#' @docType class
#' @title V2reportsBioProjectLineage
#' @description V2reportsBioProjectLineage Class
#' @format An \code{R6Class} generator object
#' @field bioprojects  list(\link{V2reportsBioProject}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsBioProjectLineage <- R6::R6Class(
  "V2reportsBioProjectLineage",
  public = list(
    `bioprojects` = NULL,

    #' @description
    #' Initialize a new V2reportsBioProjectLineage class.
    #'
    #' @param bioprojects bioprojects
    #' @param ... Other optional arguments.
    initialize = function(`bioprojects` = NULL, ...) {
      if (!is.null(`bioprojects`)) {
        stopifnot(is.vector(`bioprojects`), length(`bioprojects`) != 0)
        sapply(`bioprojects`, function(x) stopifnot(R6::is.R6(x)))
        self$`bioprojects` <- `bioprojects`
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
    #' @return V2reportsBioProjectLineage as a base R list.
    #' @examples
    #' # convert array of V2reportsBioProjectLineage (x) to a data frame
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
    #' Convert V2reportsBioProjectLineage to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsBioProjectLineageObject <- list()
      if (!is.null(self$`bioprojects`)) {
        V2reportsBioProjectLineageObject[["bioprojects"]] <-
          lapply(self$`bioprojects`, function(x) x$toSimpleType())
      }
      return(V2reportsBioProjectLineageObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsBioProjectLineage
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsBioProjectLineage
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bioprojects`)) {
        self$`bioprojects` <- ApiClient$new()$deserializeObj(this_object$`bioprojects`, "array[V2reportsBioProject]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsBioProjectLineage in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsBioProjectLineage
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsBioProjectLineage
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`bioprojects` <- ApiClient$new()$deserializeObj(this_object$`bioprojects`, "array[V2reportsBioProject]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsBioProjectLineage and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsBioProjectLineage
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
# V2reportsBioProjectLineage$unlock()
#
## Below is an example to define the print function
# V2reportsBioProjectLineage$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsBioProjectLineage$lock()

