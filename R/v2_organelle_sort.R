#' Create a new V2OrganelleSort
#'
#' @description
#' V2OrganelleSort Class
#'
#' @docType class
#' @title V2OrganelleSort
#' @description V2OrganelleSort Class
#' @format An \code{R6Class} generator object
#' @field field  character [optional]
#' @field direction  \link{V2SortDirection} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2OrganelleSort <- R6::R6Class(
  "V2OrganelleSort",
  public = list(
    `field` = NULL,
    `direction` = NULL,

    #' @description
    #' Initialize a new V2OrganelleSort class.
    #'
    #' @param field field
    #' @param direction direction
    #' @param ... Other optional arguments.
    initialize = function(`field` = NULL, `direction` = NULL, ...) {
      if (!is.null(`field`)) {
        if (!(is.character(`field`) && length(`field`) == 1)) {
          stop(paste("Error! Invalid data for `field`. Must be a string:", `field`))
        }
        self$`field` <- `field`
      }
      if (!is.null(`direction`)) {
        if (!(`direction` %in% c())) {
          stop(paste("Error! \"", `direction`, "\" cannot be assigned to `direction`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`direction`))
        self$`direction` <- `direction`
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
    #' @return V2OrganelleSort as a base R list.
    #' @examples
    #' # convert array of V2OrganelleSort (x) to a data frame
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
    #' Convert V2OrganelleSort to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2OrganelleSortObject <- list()
      if (!is.null(self$`field`)) {
        V2OrganelleSortObject[["field"]] <-
          self$`field`
      }
      if (!is.null(self$`direction`)) {
        V2OrganelleSortObject[["direction"]] <-
          self$`direction`$toSimpleType()
      }
      return(V2OrganelleSortObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2OrganelleSort
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2OrganelleSort
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`field`)) {
        self$`field` <- this_object$`field`
      }
      if (!is.null(this_object$`direction`)) {
        `direction_object` <- V2SortDirection$new()
        `direction_object`$fromJSON(jsonlite::toJSON(this_object$`direction`, auto_unbox = TRUE, digits = NA))
        self$`direction` <- `direction_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2OrganelleSort in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2OrganelleSort
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2OrganelleSort
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`field` <- this_object$`field`
      self$`direction` <- V2SortDirection$new()$fromJSON(jsonlite::toJSON(this_object$`direction`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2OrganelleSort and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2OrganelleSort
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
# V2OrganelleSort$unlock()
#
## Below is an example to define the print function
# V2OrganelleSort$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2OrganelleSort$lock()

