#' Create a new V2TaxonomyRelatedIdRequest
#'
#' @description
#' V2TaxonomyRelatedIdRequest Class
#'
#' @docType class
#' @title V2TaxonomyRelatedIdRequest
#' @description V2TaxonomyRelatedIdRequest Class
#' @format An \code{R6Class} generator object
#' @field tax_id  integer [optional]
#' @field include_lineage  character [optional]
#' @field include_subtree  character [optional]
#' @field ranks  list(\link{V2reportsRankType}) [optional]
#' @field page_size  integer [optional]
#' @field page_token  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2TaxonomyRelatedIdRequest <- R6::R6Class(
  "V2TaxonomyRelatedIdRequest",
  public = list(
    `tax_id` = NULL,
    `include_lineage` = NULL,
    `include_subtree` = NULL,
    `ranks` = NULL,
    `page_size` = NULL,
    `page_token` = NULL,

    #' @description
    #' Initialize a new V2TaxonomyRelatedIdRequest class.
    #'
    #' @param tax_id tax_id
    #' @param include_lineage include_lineage
    #' @param include_subtree include_subtree
    #' @param ranks ranks
    #' @param page_size page_size
    #' @param page_token page_token
    #' @param ... Other optional arguments.
    initialize = function(`tax_id` = NULL, `include_lineage` = NULL, `include_subtree` = NULL, `ranks` = NULL, `page_size` = NULL, `page_token` = NULL, ...) {
      if (!is.null(`tax_id`)) {
        if (!(is.numeric(`tax_id`) && length(`tax_id`) == 1)) {
          stop(paste("Error! Invalid data for `tax_id`. Must be an integer:", `tax_id`))
        }
        self$`tax_id` <- `tax_id`
      }
      if (!is.null(`include_lineage`)) {
        if (!(is.logical(`include_lineage`) && length(`include_lineage`) == 1)) {
          stop(paste("Error! Invalid data for `include_lineage`. Must be a boolean:", `include_lineage`))
        }
        self$`include_lineage` <- `include_lineage`
      }
      if (!is.null(`include_subtree`)) {
        if (!(is.logical(`include_subtree`) && length(`include_subtree`) == 1)) {
          stop(paste("Error! Invalid data for `include_subtree`. Must be a boolean:", `include_subtree`))
        }
        self$`include_subtree` <- `include_subtree`
      }
      if (!is.null(`ranks`)) {
        stopifnot(is.vector(`ranks`), length(`ranks`) != 0)
        sapply(`ranks`, function(x) stopifnot(R6::is.R6(x)))
        self$`ranks` <- `ranks`
      }
      if (!is.null(`page_size`)) {
        if (!(is.numeric(`page_size`) && length(`page_size`) == 1)) {
          stop(paste("Error! Invalid data for `page_size`. Must be an integer:", `page_size`))
        }
        self$`page_size` <- `page_size`
      }
      if (!is.null(`page_token`)) {
        if (!(is.character(`page_token`) && length(`page_token`) == 1)) {
          stop(paste("Error! Invalid data for `page_token`. Must be a string:", `page_token`))
        }
        self$`page_token` <- `page_token`
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
    #' @return V2TaxonomyRelatedIdRequest as a base R list.
    #' @examples
    #' # convert array of V2TaxonomyRelatedIdRequest (x) to a data frame
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
    #' Convert V2TaxonomyRelatedIdRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2TaxonomyRelatedIdRequestObject <- list()
      if (!is.null(self$`tax_id`)) {
        V2TaxonomyRelatedIdRequestObject[["tax_id"]] <-
          self$`tax_id`
      }
      if (!is.null(self$`include_lineage`)) {
        V2TaxonomyRelatedIdRequestObject[["include_lineage"]] <-
          self$`include_lineage`
      }
      if (!is.null(self$`include_subtree`)) {
        V2TaxonomyRelatedIdRequestObject[["include_subtree"]] <-
          self$`include_subtree`
      }
      if (!is.null(self$`ranks`)) {
        V2TaxonomyRelatedIdRequestObject[["ranks"]] <-
          lapply(self$`ranks`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`page_size`)) {
        V2TaxonomyRelatedIdRequestObject[["page_size"]] <-
          self$`page_size`
      }
      if (!is.null(self$`page_token`)) {
        V2TaxonomyRelatedIdRequestObject[["page_token"]] <-
          self$`page_token`
      }
      return(V2TaxonomyRelatedIdRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyRelatedIdRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyRelatedIdRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`tax_id`)) {
        self$`tax_id` <- this_object$`tax_id`
      }
      if (!is.null(this_object$`include_lineage`)) {
        self$`include_lineage` <- this_object$`include_lineage`
      }
      if (!is.null(this_object$`include_subtree`)) {
        self$`include_subtree` <- this_object$`include_subtree`
      }
      if (!is.null(this_object$`ranks`)) {
        self$`ranks` <- ApiClient$new()$deserializeObj(this_object$`ranks`, "array[V2reportsRankType]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`page_size`)) {
        self$`page_size` <- this_object$`page_size`
      }
      if (!is.null(this_object$`page_token`)) {
        self$`page_token` <- this_object$`page_token`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2TaxonomyRelatedIdRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyRelatedIdRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyRelatedIdRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`tax_id` <- this_object$`tax_id`
      self$`include_lineage` <- this_object$`include_lineage`
      self$`include_subtree` <- this_object$`include_subtree`
      self$`ranks` <- ApiClient$new()$deserializeObj(this_object$`ranks`, "array[V2reportsRankType]", loadNamespace("ncbiopenapi"))
      self$`page_size` <- this_object$`page_size`
      self$`page_token` <- this_object$`page_token`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2TaxonomyRelatedIdRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2TaxonomyRelatedIdRequest
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
# V2TaxonomyRelatedIdRequest$unlock()
#
## Below is an example to define the print function
# V2TaxonomyRelatedIdRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2TaxonomyRelatedIdRequest$lock()

