#' Create a new V2GeneLinksReply
#'
#' @description
#' V2GeneLinksReply Class
#'
#' @docType class
#' @title V2GeneLinksReply
#' @description V2GeneLinksReply Class
#' @format An \code{R6Class} generator object
#' @field gene_links  list(\link{V2GeneLinksReplyGeneLink}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2GeneLinksReply <- R6::R6Class(
  "V2GeneLinksReply",
  public = list(
    `gene_links` = NULL,

    #' @description
    #' Initialize a new V2GeneLinksReply class.
    #'
    #' @param gene_links gene_links
    #' @param ... Other optional arguments.
    initialize = function(`gene_links` = NULL, ...) {
      if (!is.null(`gene_links`)) {
        stopifnot(is.vector(`gene_links`), length(`gene_links`) != 0)
        sapply(`gene_links`, function(x) stopifnot(R6::is.R6(x)))
        self$`gene_links` <- `gene_links`
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
    #' @return V2GeneLinksReply as a base R list.
    #' @examples
    #' # convert array of V2GeneLinksReply (x) to a data frame
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
    #' Convert V2GeneLinksReply to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2GeneLinksReplyObject <- list()
      if (!is.null(self$`gene_links`)) {
        V2GeneLinksReplyObject[["gene_links"]] <-
          lapply(self$`gene_links`, function(x) x$toSimpleType())
      }
      return(V2GeneLinksReplyObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GeneLinksReply
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GeneLinksReply
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gene_links`)) {
        self$`gene_links` <- ApiClient$new()$deserializeObj(this_object$`gene_links`, "array[V2GeneLinksReplyGeneLink]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2GeneLinksReply in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GeneLinksReply
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GeneLinksReply
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gene_links` <- ApiClient$new()$deserializeObj(this_object$`gene_links`, "array[V2GeneLinksReplyGeneLink]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2GeneLinksReply and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2GeneLinksReply
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
# V2GeneLinksReply$unlock()
#
## Below is an example to define the print function
# V2GeneLinksReply$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2GeneLinksReply$lock()

