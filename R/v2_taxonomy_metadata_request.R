#' Create a new V2TaxonomyMetadataRequest
#'
#' @description
#' V2TaxonomyMetadataRequest Class
#'
#' @docType class
#' @title V2TaxonomyMetadataRequest
#' @description V2TaxonomyMetadataRequest Class
#' @format An \code{R6Class} generator object
#' @field taxons  list(character) [optional]
#' @field returned_content  \link{V2TaxonomyMetadataRequestContentType} [optional]
#' @field page_size  integer [optional]
#' @field include_tabular_header  \link{V2IncludeTabularHeader} [optional]
#' @field page_token  character [optional]
#' @field table_format  \link{V2TaxonomyMetadataRequestTableFormat} [optional]
#' @field children  character [optional]
#' @field ranks  list(\link{V2reportsRankType}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2TaxonomyMetadataRequest <- R6::R6Class(
  "V2TaxonomyMetadataRequest",
  public = list(
    `taxons` = NULL,
    `returned_content` = NULL,
    `page_size` = NULL,
    `include_tabular_header` = NULL,
    `page_token` = NULL,
    `table_format` = NULL,
    `children` = NULL,
    `ranks` = NULL,

    #' @description
    #' Initialize a new V2TaxonomyMetadataRequest class.
    #'
    #' @param taxons taxons
    #' @param returned_content returned_content
    #' @param page_size page_size
    #' @param include_tabular_header include_tabular_header
    #' @param page_token page_token
    #' @param table_format table_format
    #' @param children children
    #' @param ranks ranks
    #' @param ... Other optional arguments.
    initialize = function(`taxons` = NULL, `returned_content` = NULL, `page_size` = NULL, `include_tabular_header` = NULL, `page_token` = NULL, `table_format` = NULL, `children` = NULL, `ranks` = NULL, ...) {
      if (!is.null(`taxons`)) {
        stopifnot(is.vector(`taxons`), length(`taxons`) != 0)
        sapply(`taxons`, function(x) stopifnot(is.character(x)))
        self$`taxons` <- `taxons`
      }
      if (!is.null(`returned_content`)) {
        if (!(`returned_content` %in% c())) {
          stop(paste("Error! \"", `returned_content`, "\" cannot be assigned to `returned_content`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`returned_content`))
        self$`returned_content` <- `returned_content`
      }
      if (!is.null(`page_size`)) {
        if (!(is.numeric(`page_size`) && length(`page_size`) == 1)) {
          stop(paste("Error! Invalid data for `page_size`. Must be an integer:", `page_size`))
        }
        self$`page_size` <- `page_size`
      }
      if (!is.null(`include_tabular_header`)) {
        if (!(`include_tabular_header` %in% c())) {
          stop(paste("Error! \"", `include_tabular_header`, "\" cannot be assigned to `include_tabular_header`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`include_tabular_header`))
        self$`include_tabular_header` <- `include_tabular_header`
      }
      if (!is.null(`page_token`)) {
        if (!(is.character(`page_token`) && length(`page_token`) == 1)) {
          stop(paste("Error! Invalid data for `page_token`. Must be a string:", `page_token`))
        }
        self$`page_token` <- `page_token`
      }
      if (!is.null(`table_format`)) {
        if (!(`table_format` %in% c())) {
          stop(paste("Error! \"", `table_format`, "\" cannot be assigned to `table_format`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`table_format`))
        self$`table_format` <- `table_format`
      }
      if (!is.null(`children`)) {
        if (!(is.logical(`children`) && length(`children`) == 1)) {
          stop(paste("Error! Invalid data for `children`. Must be a boolean:", `children`))
        }
        self$`children` <- `children`
      }
      if (!is.null(`ranks`)) {
        stopifnot(is.vector(`ranks`), length(`ranks`) != 0)
        sapply(`ranks`, function(x) stopifnot(R6::is.R6(x)))
        self$`ranks` <- `ranks`
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
    #' @return V2TaxonomyMetadataRequest as a base R list.
    #' @examples
    #' # convert array of V2TaxonomyMetadataRequest (x) to a data frame
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
    #' Convert V2TaxonomyMetadataRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2TaxonomyMetadataRequestObject <- list()
      if (!is.null(self$`taxons`)) {
        V2TaxonomyMetadataRequestObject[["taxons"]] <-
          self$`taxons`
      }
      if (!is.null(self$`returned_content`)) {
        V2TaxonomyMetadataRequestObject[["returned_content"]] <-
          self$`returned_content`$toSimpleType()
      }
      if (!is.null(self$`page_size`)) {
        V2TaxonomyMetadataRequestObject[["page_size"]] <-
          self$`page_size`
      }
      if (!is.null(self$`include_tabular_header`)) {
        V2TaxonomyMetadataRequestObject[["include_tabular_header"]] <-
          self$`include_tabular_header`$toSimpleType()
      }
      if (!is.null(self$`page_token`)) {
        V2TaxonomyMetadataRequestObject[["page_token"]] <-
          self$`page_token`
      }
      if (!is.null(self$`table_format`)) {
        V2TaxonomyMetadataRequestObject[["table_format"]] <-
          self$`table_format`$toSimpleType()
      }
      if (!is.null(self$`children`)) {
        V2TaxonomyMetadataRequestObject[["children"]] <-
          self$`children`
      }
      if (!is.null(self$`ranks`)) {
        V2TaxonomyMetadataRequestObject[["ranks"]] <-
          lapply(self$`ranks`, function(x) x$toSimpleType())
      }
      return(V2TaxonomyMetadataRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyMetadataRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyMetadataRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`taxons`)) {
        self$`taxons` <- ApiClient$new()$deserializeObj(this_object$`taxons`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`returned_content`)) {
        `returned_content_object` <- V2TaxonomyMetadataRequestContentType$new()
        `returned_content_object`$fromJSON(jsonlite::toJSON(this_object$`returned_content`, auto_unbox = TRUE, digits = NA))
        self$`returned_content` <- `returned_content_object`
      }
      if (!is.null(this_object$`page_size`)) {
        self$`page_size` <- this_object$`page_size`
      }
      if (!is.null(this_object$`include_tabular_header`)) {
        `include_tabular_header_object` <- V2IncludeTabularHeader$new()
        `include_tabular_header_object`$fromJSON(jsonlite::toJSON(this_object$`include_tabular_header`, auto_unbox = TRUE, digits = NA))
        self$`include_tabular_header` <- `include_tabular_header_object`
      }
      if (!is.null(this_object$`page_token`)) {
        self$`page_token` <- this_object$`page_token`
      }
      if (!is.null(this_object$`table_format`)) {
        `table_format_object` <- V2TaxonomyMetadataRequestTableFormat$new()
        `table_format_object`$fromJSON(jsonlite::toJSON(this_object$`table_format`, auto_unbox = TRUE, digits = NA))
        self$`table_format` <- `table_format_object`
      }
      if (!is.null(this_object$`children`)) {
        self$`children` <- this_object$`children`
      }
      if (!is.null(this_object$`ranks`)) {
        self$`ranks` <- ApiClient$new()$deserializeObj(this_object$`ranks`, "array[V2reportsRankType]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2TaxonomyMetadataRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyMetadataRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyMetadataRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`taxons` <- ApiClient$new()$deserializeObj(this_object$`taxons`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`returned_content` <- V2TaxonomyMetadataRequestContentType$new()$fromJSON(jsonlite::toJSON(this_object$`returned_content`, auto_unbox = TRUE, digits = NA))
      self$`page_size` <- this_object$`page_size`
      self$`include_tabular_header` <- V2IncludeTabularHeader$new()$fromJSON(jsonlite::toJSON(this_object$`include_tabular_header`, auto_unbox = TRUE, digits = NA))
      self$`page_token` <- this_object$`page_token`
      self$`table_format` <- V2TaxonomyMetadataRequestTableFormat$new()$fromJSON(jsonlite::toJSON(this_object$`table_format`, auto_unbox = TRUE, digits = NA))
      self$`children` <- this_object$`children`
      self$`ranks` <- ApiClient$new()$deserializeObj(this_object$`ranks`, "array[V2reportsRankType]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2TaxonomyMetadataRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2TaxonomyMetadataRequest
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
# V2TaxonomyMetadataRequest$unlock()
#
## Below is an example to define the print function
# V2TaxonomyMetadataRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2TaxonomyMetadataRequest$lock()

