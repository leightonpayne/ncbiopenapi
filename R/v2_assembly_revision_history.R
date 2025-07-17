#' Create a new V2AssemblyRevisionHistory
#'
#' @description
#' V2AssemblyRevisionHistory Class
#'
#' @docType class
#' @title V2AssemblyRevisionHistory
#' @description V2AssemblyRevisionHistory Class
#' @format An \code{R6Class} generator object
#' @field assembly_revisions  list(\link{V2reportsAssemblyRevision}) [optional]
#' @field total_count  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2AssemblyRevisionHistory <- R6::R6Class(
  "V2AssemblyRevisionHistory",
  public = list(
    `assembly_revisions` = NULL,
    `total_count` = NULL,

    #' @description
    #' Initialize a new V2AssemblyRevisionHistory class.
    #'
    #' @param assembly_revisions assembly_revisions
    #' @param total_count total_count
    #' @param ... Other optional arguments.
    initialize = function(`assembly_revisions` = NULL, `total_count` = NULL, ...) {
      if (!is.null(`assembly_revisions`)) {
        stopifnot(is.vector(`assembly_revisions`), length(`assembly_revisions`) != 0)
        sapply(`assembly_revisions`, function(x) stopifnot(R6::is.R6(x)))
        self$`assembly_revisions` <- `assembly_revisions`
      }
      if (!is.null(`total_count`)) {
        if (!(is.numeric(`total_count`) && length(`total_count`) == 1)) {
          stop(paste("Error! Invalid data for `total_count`. Must be an integer:", `total_count`))
        }
        self$`total_count` <- `total_count`
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
    #' @return V2AssemblyRevisionHistory as a base R list.
    #' @examples
    #' # convert array of V2AssemblyRevisionHistory (x) to a data frame
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
    #' Convert V2AssemblyRevisionHistory to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2AssemblyRevisionHistoryObject <- list()
      if (!is.null(self$`assembly_revisions`)) {
        V2AssemblyRevisionHistoryObject[["assembly_revisions"]] <-
          lapply(self$`assembly_revisions`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`total_count`)) {
        V2AssemblyRevisionHistoryObject[["total_count"]] <-
          self$`total_count`
      }
      return(V2AssemblyRevisionHistoryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2AssemblyRevisionHistory
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2AssemblyRevisionHistory
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`assembly_revisions`)) {
        self$`assembly_revisions` <- ApiClient$new()$deserializeObj(this_object$`assembly_revisions`, "array[V2reportsAssemblyRevision]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`total_count`)) {
        self$`total_count` <- this_object$`total_count`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2AssemblyRevisionHistory in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2AssemblyRevisionHistory
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2AssemblyRevisionHistory
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`assembly_revisions` <- ApiClient$new()$deserializeObj(this_object$`assembly_revisions`, "array[V2reportsAssemblyRevision]", loadNamespace("ncbiopenapi"))
      self$`total_count` <- this_object$`total_count`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2AssemblyRevisionHistory and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2AssemblyRevisionHistory
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
# V2AssemblyRevisionHistory$unlock()
#
## Below is an example to define the print function
# V2AssemblyRevisionHistory$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2AssemblyRevisionHistory$lock()

