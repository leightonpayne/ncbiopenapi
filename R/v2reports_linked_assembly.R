#' Create a new V2reportsLinkedAssembly
#'
#' @description
#' V2reportsLinkedAssembly Class
#'
#' @docType class
#' @title V2reportsLinkedAssembly
#' @description V2reportsLinkedAssembly Class
#' @format An \code{R6Class} generator object
#' @field linked_assembly  character [optional]
#' @field assembly_type  \link{V2reportsLinkedAssemblyType} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsLinkedAssembly <- R6::R6Class(
  "V2reportsLinkedAssembly",
  public = list(
    `linked_assembly` = NULL,
    `assembly_type` = NULL,

    #' @description
    #' Initialize a new V2reportsLinkedAssembly class.
    #'
    #' @param linked_assembly linked_assembly
    #' @param assembly_type assembly_type
    #' @param ... Other optional arguments.
    initialize = function(`linked_assembly` = NULL, `assembly_type` = NULL, ...) {
      if (!is.null(`linked_assembly`)) {
        if (!(is.character(`linked_assembly`) && length(`linked_assembly`) == 1)) {
          stop(paste("Error! Invalid data for `linked_assembly`. Must be a string:", `linked_assembly`))
        }
        self$`linked_assembly` <- `linked_assembly`
      }
      if (!is.null(`assembly_type`)) {
        if (!(`assembly_type` %in% c())) {
          stop(paste("Error! \"", `assembly_type`, "\" cannot be assigned to `assembly_type`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`assembly_type`))
        self$`assembly_type` <- `assembly_type`
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
    #' @return V2reportsLinkedAssembly as a base R list.
    #' @examples
    #' # convert array of V2reportsLinkedAssembly (x) to a data frame
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
    #' Convert V2reportsLinkedAssembly to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsLinkedAssemblyObject <- list()
      if (!is.null(self$`linked_assembly`)) {
        V2reportsLinkedAssemblyObject[["linked_assembly"]] <-
          self$`linked_assembly`
      }
      if (!is.null(self$`assembly_type`)) {
        V2reportsLinkedAssemblyObject[["assembly_type"]] <-
          self$`assembly_type`$toSimpleType()
      }
      return(V2reportsLinkedAssemblyObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsLinkedAssembly
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsLinkedAssembly
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`linked_assembly`)) {
        self$`linked_assembly` <- this_object$`linked_assembly`
      }
      if (!is.null(this_object$`assembly_type`)) {
        `assembly_type_object` <- V2reportsLinkedAssemblyType$new()
        `assembly_type_object`$fromJSON(jsonlite::toJSON(this_object$`assembly_type`, auto_unbox = TRUE, digits = NA))
        self$`assembly_type` <- `assembly_type_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsLinkedAssembly in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsLinkedAssembly
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsLinkedAssembly
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`linked_assembly` <- this_object$`linked_assembly`
      self$`assembly_type` <- V2reportsLinkedAssemblyType$new()$fromJSON(jsonlite::toJSON(this_object$`assembly_type`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsLinkedAssembly and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsLinkedAssembly
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
# V2reportsLinkedAssembly$unlock()
#
## Below is an example to define the print function
# V2reportsLinkedAssembly$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsLinkedAssembly$lock()

