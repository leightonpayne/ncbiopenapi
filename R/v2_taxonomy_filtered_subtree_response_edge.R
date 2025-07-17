#' Create a new V2TaxonomyFilteredSubtreeResponseEdge
#'
#' @description
#' V2TaxonomyFilteredSubtreeResponseEdge Class
#'
#' @docType class
#' @title V2TaxonomyFilteredSubtreeResponseEdge
#' @description V2TaxonomyFilteredSubtreeResponseEdge Class
#' @format An \code{R6Class} generator object
#' @field visible_children  list(integer) [optional]
#' @field children_status  \link{V2TaxonomyFilteredSubtreeResponseEdgeChildStatus} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2TaxonomyFilteredSubtreeResponseEdge <- R6::R6Class(
  "V2TaxonomyFilteredSubtreeResponseEdge",
  public = list(
    `visible_children` = NULL,
    `children_status` = NULL,

    #' @description
    #' Initialize a new V2TaxonomyFilteredSubtreeResponseEdge class.
    #'
    #' @param visible_children visible_children
    #' @param children_status children_status
    #' @param ... Other optional arguments.
    initialize = function(`visible_children` = NULL, `children_status` = NULL, ...) {
      if (!is.null(`visible_children`)) {
        stopifnot(is.vector(`visible_children`), length(`visible_children`) != 0)
        sapply(`visible_children`, function(x) stopifnot(is.character(x)))
        self$`visible_children` <- `visible_children`
      }
      if (!is.null(`children_status`)) {
        if (!(`children_status` %in% c())) {
          stop(paste("Error! \"", `children_status`, "\" cannot be assigned to `children_status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`children_status`))
        self$`children_status` <- `children_status`
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
    #' @return V2TaxonomyFilteredSubtreeResponseEdge as a base R list.
    #' @examples
    #' # convert array of V2TaxonomyFilteredSubtreeResponseEdge (x) to a data frame
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
    #' Convert V2TaxonomyFilteredSubtreeResponseEdge to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2TaxonomyFilteredSubtreeResponseEdgeObject <- list()
      if (!is.null(self$`visible_children`)) {
        V2TaxonomyFilteredSubtreeResponseEdgeObject[["visible_children"]] <-
          self$`visible_children`
      }
      if (!is.null(self$`children_status`)) {
        V2TaxonomyFilteredSubtreeResponseEdgeObject[["children_status"]] <-
          self$`children_status`$toSimpleType()
      }
      return(V2TaxonomyFilteredSubtreeResponseEdgeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyFilteredSubtreeResponseEdge
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyFilteredSubtreeResponseEdge
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`visible_children`)) {
        self$`visible_children` <- ApiClient$new()$deserializeObj(this_object$`visible_children`, "array[integer]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`children_status`)) {
        `children_status_object` <- V2TaxonomyFilteredSubtreeResponseEdgeChildStatus$new()
        `children_status_object`$fromJSON(jsonlite::toJSON(this_object$`children_status`, auto_unbox = TRUE, digits = NA))
        self$`children_status` <- `children_status_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2TaxonomyFilteredSubtreeResponseEdge in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyFilteredSubtreeResponseEdge
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyFilteredSubtreeResponseEdge
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`visible_children` <- ApiClient$new()$deserializeObj(this_object$`visible_children`, "array[integer]", loadNamespace("ncbiopenapi"))
      self$`children_status` <- V2TaxonomyFilteredSubtreeResponseEdgeChildStatus$new()$fromJSON(jsonlite::toJSON(this_object$`children_status`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2TaxonomyFilteredSubtreeResponseEdge and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2TaxonomyFilteredSubtreeResponseEdge
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
# V2TaxonomyFilteredSubtreeResponseEdge$unlock()
#
## Below is an example to define the print function
# V2TaxonomyFilteredSubtreeResponseEdge$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2TaxonomyFilteredSubtreeResponseEdge$lock()

