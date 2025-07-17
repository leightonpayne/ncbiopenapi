#' Create a new V2TaxonomyLinksResponseGenericLink
#'
#' @description
#' V2TaxonomyLinksResponseGenericLink Class
#'
#' @docType class
#' @title V2TaxonomyLinksResponseGenericLink
#' @description V2TaxonomyLinksResponseGenericLink Class
#' @format An \code{R6Class} generator object
#' @field link_name  character [optional]
#' @field link_url  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2TaxonomyLinksResponseGenericLink <- R6::R6Class(
  "V2TaxonomyLinksResponseGenericLink",
  public = list(
    `link_name` = NULL,
    `link_url` = NULL,

    #' @description
    #' Initialize a new V2TaxonomyLinksResponseGenericLink class.
    #'
    #' @param link_name link_name
    #' @param link_url link_url
    #' @param ... Other optional arguments.
    initialize = function(`link_name` = NULL, `link_url` = NULL, ...) {
      if (!is.null(`link_name`)) {
        if (!(is.character(`link_name`) && length(`link_name`) == 1)) {
          stop(paste("Error! Invalid data for `link_name`. Must be a string:", `link_name`))
        }
        self$`link_name` <- `link_name`
      }
      if (!is.null(`link_url`)) {
        if (!(is.character(`link_url`) && length(`link_url`) == 1)) {
          stop(paste("Error! Invalid data for `link_url`. Must be a string:", `link_url`))
        }
        self$`link_url` <- `link_url`
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
    #' @return V2TaxonomyLinksResponseGenericLink as a base R list.
    #' @examples
    #' # convert array of V2TaxonomyLinksResponseGenericLink (x) to a data frame
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
    #' Convert V2TaxonomyLinksResponseGenericLink to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2TaxonomyLinksResponseGenericLinkObject <- list()
      if (!is.null(self$`link_name`)) {
        V2TaxonomyLinksResponseGenericLinkObject[["link_name"]] <-
          self$`link_name`
      }
      if (!is.null(self$`link_url`)) {
        V2TaxonomyLinksResponseGenericLinkObject[["link_url"]] <-
          self$`link_url`
      }
      return(V2TaxonomyLinksResponseGenericLinkObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyLinksResponseGenericLink
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyLinksResponseGenericLink
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`link_name`)) {
        self$`link_name` <- this_object$`link_name`
      }
      if (!is.null(this_object$`link_url`)) {
        self$`link_url` <- this_object$`link_url`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2TaxonomyLinksResponseGenericLink in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyLinksResponseGenericLink
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyLinksResponseGenericLink
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`link_name` <- this_object$`link_name`
      self$`link_url` <- this_object$`link_url`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2TaxonomyLinksResponseGenericLink and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2TaxonomyLinksResponseGenericLink
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
# V2TaxonomyLinksResponseGenericLink$unlock()
#
## Below is an example to define the print function
# V2TaxonomyLinksResponseGenericLink$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2TaxonomyLinksResponseGenericLink$lock()

