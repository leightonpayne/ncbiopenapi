#' Create a new V2RefGeneCatalogDatasetRequest
#'
#' @description
#' V2RefGeneCatalogDatasetRequest Class
#'
#' @docType class
#' @title V2RefGeneCatalogDatasetRequest
#' @description V2RefGeneCatalogDatasetRequest Class
#' @format An \code{R6Class} generator object
#' @field opaque_solr_query  character [optional]
#' @field files  list(\link{V2RefGeneCatalogDatasetRequestFileType}) [optional]
#' @field element_flank_config  \link{V2ElementFlankConfig} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2RefGeneCatalogDatasetRequest <- R6::R6Class(
  "V2RefGeneCatalogDatasetRequest",
  public = list(
    `opaque_solr_query` = NULL,
    `files` = NULL,
    `element_flank_config` = NULL,

    #' @description
    #' Initialize a new V2RefGeneCatalogDatasetRequest class.
    #'
    #' @param opaque_solr_query opaque_solr_query
    #' @param files files
    #' @param element_flank_config element_flank_config
    #' @param ... Other optional arguments.
    initialize = function(`opaque_solr_query` = NULL, `files` = NULL, `element_flank_config` = NULL, ...) {
      if (!is.null(`opaque_solr_query`)) {
        if (!(is.character(`opaque_solr_query`) && length(`opaque_solr_query`) == 1)) {
          stop(paste("Error! Invalid data for `opaque_solr_query`. Must be a string:", `opaque_solr_query`))
        }
        self$`opaque_solr_query` <- `opaque_solr_query`
      }
      if (!is.null(`files`)) {
        stopifnot(is.vector(`files`), length(`files`) != 0)
        sapply(`files`, function(x) stopifnot(R6::is.R6(x)))
        self$`files` <- `files`
      }
      if (!is.null(`element_flank_config`)) {
        stopifnot(R6::is.R6(`element_flank_config`))
        self$`element_flank_config` <- `element_flank_config`
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
    #' @return V2RefGeneCatalogDatasetRequest as a base R list.
    #' @examples
    #' # convert array of V2RefGeneCatalogDatasetRequest (x) to a data frame
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
    #' Convert V2RefGeneCatalogDatasetRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2RefGeneCatalogDatasetRequestObject <- list()
      if (!is.null(self$`opaque_solr_query`)) {
        V2RefGeneCatalogDatasetRequestObject[["opaque_solr_query"]] <-
          self$`opaque_solr_query`
      }
      if (!is.null(self$`files`)) {
        V2RefGeneCatalogDatasetRequestObject[["files"]] <-
          lapply(self$`files`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`element_flank_config`)) {
        V2RefGeneCatalogDatasetRequestObject[["element_flank_config"]] <-
          self$`element_flank_config`$toSimpleType()
      }
      return(V2RefGeneCatalogDatasetRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2RefGeneCatalogDatasetRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2RefGeneCatalogDatasetRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`opaque_solr_query`)) {
        self$`opaque_solr_query` <- this_object$`opaque_solr_query`
      }
      if (!is.null(this_object$`files`)) {
        self$`files` <- ApiClient$new()$deserializeObj(this_object$`files`, "array[V2RefGeneCatalogDatasetRequestFileType]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`element_flank_config`)) {
        `element_flank_config_object` <- V2ElementFlankConfig$new()
        `element_flank_config_object`$fromJSON(jsonlite::toJSON(this_object$`element_flank_config`, auto_unbox = TRUE, digits = NA))
        self$`element_flank_config` <- `element_flank_config_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2RefGeneCatalogDatasetRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2RefGeneCatalogDatasetRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2RefGeneCatalogDatasetRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`opaque_solr_query` <- this_object$`opaque_solr_query`
      self$`files` <- ApiClient$new()$deserializeObj(this_object$`files`, "array[V2RefGeneCatalogDatasetRequestFileType]", loadNamespace("ncbiopenapi"))
      self$`element_flank_config` <- V2ElementFlankConfig$new()$fromJSON(jsonlite::toJSON(this_object$`element_flank_config`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2RefGeneCatalogDatasetRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2RefGeneCatalogDatasetRequest
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
# V2RefGeneCatalogDatasetRequest$unlock()
#
## Below is an example to define the print function
# V2RefGeneCatalogDatasetRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2RefGeneCatalogDatasetRequest$lock()

