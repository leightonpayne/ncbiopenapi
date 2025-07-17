#' Create a new V2TaxonomyFilteredSubtreeRequest
#'
#' @description
#' V2TaxonomyFilteredSubtreeRequest Class
#'
#' @docType class
#' @title V2TaxonomyFilteredSubtreeRequest
#' @description V2TaxonomyFilteredSubtreeRequest Class
#' @format An \code{R6Class} generator object
#' @field taxons  list(character) [optional]
#' @field specified_limit  character [optional]
#' @field rank_limits  list(\link{V2reportsRankType}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2TaxonomyFilteredSubtreeRequest <- R6::R6Class(
  "V2TaxonomyFilteredSubtreeRequest",
  public = list(
    `taxons` = NULL,
    `specified_limit` = NULL,
    `rank_limits` = NULL,

    #' @description
    #' Initialize a new V2TaxonomyFilteredSubtreeRequest class.
    #'
    #' @param taxons taxons
    #' @param specified_limit specified_limit
    #' @param rank_limits rank_limits
    #' @param ... Other optional arguments.
    initialize = function(`taxons` = NULL, `specified_limit` = NULL, `rank_limits` = NULL, ...) {
      if (!is.null(`taxons`)) {
        stopifnot(is.vector(`taxons`), length(`taxons`) != 0)
        sapply(`taxons`, function(x) stopifnot(is.character(x)))
        self$`taxons` <- `taxons`
      }
      if (!is.null(`specified_limit`)) {
        if (!(is.logical(`specified_limit`) && length(`specified_limit`) == 1)) {
          stop(paste("Error! Invalid data for `specified_limit`. Must be a boolean:", `specified_limit`))
        }
        self$`specified_limit` <- `specified_limit`
      }
      if (!is.null(`rank_limits`)) {
        stopifnot(is.vector(`rank_limits`), length(`rank_limits`) != 0)
        sapply(`rank_limits`, function(x) stopifnot(R6::is.R6(x)))
        self$`rank_limits` <- `rank_limits`
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
    #' @return V2TaxonomyFilteredSubtreeRequest as a base R list.
    #' @examples
    #' # convert array of V2TaxonomyFilteredSubtreeRequest (x) to a data frame
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
    #' Convert V2TaxonomyFilteredSubtreeRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2TaxonomyFilteredSubtreeRequestObject <- list()
      if (!is.null(self$`taxons`)) {
        V2TaxonomyFilteredSubtreeRequestObject[["taxons"]] <-
          self$`taxons`
      }
      if (!is.null(self$`specified_limit`)) {
        V2TaxonomyFilteredSubtreeRequestObject[["specified_limit"]] <-
          self$`specified_limit`
      }
      if (!is.null(self$`rank_limits`)) {
        V2TaxonomyFilteredSubtreeRequestObject[["rank_limits"]] <-
          lapply(self$`rank_limits`, function(x) x$toSimpleType())
      }
      return(V2TaxonomyFilteredSubtreeRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyFilteredSubtreeRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyFilteredSubtreeRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`taxons`)) {
        self$`taxons` <- ApiClient$new()$deserializeObj(this_object$`taxons`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`specified_limit`)) {
        self$`specified_limit` <- this_object$`specified_limit`
      }
      if (!is.null(this_object$`rank_limits`)) {
        self$`rank_limits` <- ApiClient$new()$deserializeObj(this_object$`rank_limits`, "array[V2reportsRankType]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2TaxonomyFilteredSubtreeRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyFilteredSubtreeRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyFilteredSubtreeRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`taxons` <- ApiClient$new()$deserializeObj(this_object$`taxons`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`specified_limit` <- this_object$`specified_limit`
      self$`rank_limits` <- ApiClient$new()$deserializeObj(this_object$`rank_limits`, "array[V2reportsRankType]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2TaxonomyFilteredSubtreeRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2TaxonomyFilteredSubtreeRequest
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
# V2TaxonomyFilteredSubtreeRequest$unlock()
#
## Below is an example to define the print function
# V2TaxonomyFilteredSubtreeRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2TaxonomyFilteredSubtreeRequest$lock()

