#' Create a new V2AssemblyLinksReply
#'
#' @description
#' V2AssemblyLinksReply Class
#'
#' @docType class
#' @title V2AssemblyLinksReply
#' @description V2AssemblyLinksReply Class
#' @format An \code{R6Class} generator object
#' @field assembly_links  list(\link{V2AssemblyLinksReplyAssemblyLink}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2AssemblyLinksReply <- R6::R6Class(
  "V2AssemblyLinksReply",
  public = list(
    `assembly_links` = NULL,

    #' @description
    #' Initialize a new V2AssemblyLinksReply class.
    #'
    #' @param assembly_links assembly_links
    #' @param ... Other optional arguments.
    initialize = function(`assembly_links` = NULL, ...) {
      if (!is.null(`assembly_links`)) {
        stopifnot(is.vector(`assembly_links`), length(`assembly_links`) != 0)
        sapply(`assembly_links`, function(x) stopifnot(R6::is.R6(x)))
        self$`assembly_links` <- `assembly_links`
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
    #' @return V2AssemblyLinksReply as a base R list.
    #' @examples
    #' # convert array of V2AssemblyLinksReply (x) to a data frame
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
    #' Convert V2AssemblyLinksReply to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2AssemblyLinksReplyObject <- list()
      if (!is.null(self$`assembly_links`)) {
        V2AssemblyLinksReplyObject[["assembly_links"]] <-
          lapply(self$`assembly_links`, function(x) x$toSimpleType())
      }
      return(V2AssemblyLinksReplyObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2AssemblyLinksReply
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2AssemblyLinksReply
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`assembly_links`)) {
        self$`assembly_links` <- ApiClient$new()$deserializeObj(this_object$`assembly_links`, "array[V2AssemblyLinksReplyAssemblyLink]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2AssemblyLinksReply in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2AssemblyLinksReply
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2AssemblyLinksReply
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`assembly_links` <- ApiClient$new()$deserializeObj(this_object$`assembly_links`, "array[V2AssemblyLinksReplyAssemblyLink]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2AssemblyLinksReply and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2AssemblyLinksReply
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
# V2AssemblyLinksReply$unlock()
#
## Below is an example to define the print function
# V2AssemblyLinksReply$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2AssemblyLinksReply$lock()

