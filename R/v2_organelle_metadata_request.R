#' Create a new V2OrganelleMetadataRequest
#'
#' @description
#' V2OrganelleMetadataRequest Class
#'
#' @docType class
#' @title V2OrganelleMetadataRequest
#' @description V2OrganelleMetadataRequest Class
#' @format An \code{R6Class} generator object
#' @field taxons  list(character) [optional]
#' @field accessions  list(character) [optional]
#' @field organelle_types  list(\link{V2reportsOrganelleType}) [optional]
#' @field first_release_date  character [optional]
#' @field last_release_date  character [optional]
#' @field tax_exact_match  character [optional]
#' @field sort  list(\link{V2OrganelleSort}) [optional]
#' @field returned_content  \link{V2OrganelleMetadataRequestContentType} [optional]
#' @field page_size  integer [optional]
#' @field page_token  character [optional]
#' @field table_format  \link{V2OrganelleMetadataRequestOrganelleTableFormat} [optional]
#' @field include_tabular_header  \link{V2IncludeTabularHeader} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2OrganelleMetadataRequest <- R6::R6Class(
  "V2OrganelleMetadataRequest",
  public = list(
    `taxons` = NULL,
    `accessions` = NULL,
    `organelle_types` = NULL,
    `first_release_date` = NULL,
    `last_release_date` = NULL,
    `tax_exact_match` = NULL,
    `sort` = NULL,
    `returned_content` = NULL,
    `page_size` = NULL,
    `page_token` = NULL,
    `table_format` = NULL,
    `include_tabular_header` = NULL,

    #' @description
    #' Initialize a new V2OrganelleMetadataRequest class.
    #'
    #' @param taxons taxons
    #' @param accessions accessions
    #' @param organelle_types organelle_types
    #' @param first_release_date first_release_date
    #' @param last_release_date last_release_date
    #' @param tax_exact_match tax_exact_match
    #' @param sort sort
    #' @param returned_content returned_content
    #' @param page_size page_size
    #' @param page_token page_token
    #' @param table_format table_format
    #' @param include_tabular_header include_tabular_header
    #' @param ... Other optional arguments.
    initialize = function(`taxons` = NULL, `accessions` = NULL, `organelle_types` = NULL, `first_release_date` = NULL, `last_release_date` = NULL, `tax_exact_match` = NULL, `sort` = NULL, `returned_content` = NULL, `page_size` = NULL, `page_token` = NULL, `table_format` = NULL, `include_tabular_header` = NULL, ...) {
      if (!is.null(`taxons`)) {
        stopifnot(is.vector(`taxons`), length(`taxons`) != 0)
        sapply(`taxons`, function(x) stopifnot(is.character(x)))
        self$`taxons` <- `taxons`
      }
      if (!is.null(`accessions`)) {
        stopifnot(is.vector(`accessions`), length(`accessions`) != 0)
        sapply(`accessions`, function(x) stopifnot(is.character(x)))
        self$`accessions` <- `accessions`
      }
      if (!is.null(`organelle_types`)) {
        stopifnot(is.vector(`organelle_types`), length(`organelle_types`) != 0)
        sapply(`organelle_types`, function(x) stopifnot(R6::is.R6(x)))
        self$`organelle_types` <- `organelle_types`
      }
      if (!is.null(`first_release_date`)) {
        if (!is.character(`first_release_date`)) {
          stop(paste("Error! Invalid data for `first_release_date`. Must be a string:", `first_release_date`))
        }
        self$`first_release_date` <- `first_release_date`
      }
      if (!is.null(`last_release_date`)) {
        if (!is.character(`last_release_date`)) {
          stop(paste("Error! Invalid data for `last_release_date`. Must be a string:", `last_release_date`))
        }
        self$`last_release_date` <- `last_release_date`
      }
      if (!is.null(`tax_exact_match`)) {
        if (!(is.logical(`tax_exact_match`) && length(`tax_exact_match`) == 1)) {
          stop(paste("Error! Invalid data for `tax_exact_match`. Must be a boolean:", `tax_exact_match`))
        }
        self$`tax_exact_match` <- `tax_exact_match`
      }
      if (!is.null(`sort`)) {
        stopifnot(is.vector(`sort`), length(`sort`) != 0)
        sapply(`sort`, function(x) stopifnot(R6::is.R6(x)))
        self$`sort` <- `sort`
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
      if (!is.null(`include_tabular_header`)) {
        if (!(`include_tabular_header` %in% c())) {
          stop(paste("Error! \"", `include_tabular_header`, "\" cannot be assigned to `include_tabular_header`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`include_tabular_header`))
        self$`include_tabular_header` <- `include_tabular_header`
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
    #' @return V2OrganelleMetadataRequest as a base R list.
    #' @examples
    #' # convert array of V2OrganelleMetadataRequest (x) to a data frame
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
    #' Convert V2OrganelleMetadataRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2OrganelleMetadataRequestObject <- list()
      if (!is.null(self$`taxons`)) {
        V2OrganelleMetadataRequestObject[["taxons"]] <-
          self$`taxons`
      }
      if (!is.null(self$`accessions`)) {
        V2OrganelleMetadataRequestObject[["accessions"]] <-
          self$`accessions`
      }
      if (!is.null(self$`organelle_types`)) {
        V2OrganelleMetadataRequestObject[["organelle_types"]] <-
          lapply(self$`organelle_types`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`first_release_date`)) {
        V2OrganelleMetadataRequestObject[["first_release_date"]] <-
          self$`first_release_date`
      }
      if (!is.null(self$`last_release_date`)) {
        V2OrganelleMetadataRequestObject[["last_release_date"]] <-
          self$`last_release_date`
      }
      if (!is.null(self$`tax_exact_match`)) {
        V2OrganelleMetadataRequestObject[["tax_exact_match"]] <-
          self$`tax_exact_match`
      }
      if (!is.null(self$`sort`)) {
        V2OrganelleMetadataRequestObject[["sort"]] <-
          lapply(self$`sort`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`returned_content`)) {
        V2OrganelleMetadataRequestObject[["returned_content"]] <-
          self$`returned_content`$toSimpleType()
      }
      if (!is.null(self$`page_size`)) {
        V2OrganelleMetadataRequestObject[["page_size"]] <-
          self$`page_size`
      }
      if (!is.null(self$`page_token`)) {
        V2OrganelleMetadataRequestObject[["page_token"]] <-
          self$`page_token`
      }
      if (!is.null(self$`table_format`)) {
        V2OrganelleMetadataRequestObject[["table_format"]] <-
          self$`table_format`$toSimpleType()
      }
      if (!is.null(self$`include_tabular_header`)) {
        V2OrganelleMetadataRequestObject[["include_tabular_header"]] <-
          self$`include_tabular_header`$toSimpleType()
      }
      return(V2OrganelleMetadataRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2OrganelleMetadataRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2OrganelleMetadataRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`taxons`)) {
        self$`taxons` <- ApiClient$new()$deserializeObj(this_object$`taxons`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`accessions`)) {
        self$`accessions` <- ApiClient$new()$deserializeObj(this_object$`accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`organelle_types`)) {
        self$`organelle_types` <- ApiClient$new()$deserializeObj(this_object$`organelle_types`, "array[V2reportsOrganelleType]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`first_release_date`)) {
        self$`first_release_date` <- this_object$`first_release_date`
      }
      if (!is.null(this_object$`last_release_date`)) {
        self$`last_release_date` <- this_object$`last_release_date`
      }
      if (!is.null(this_object$`tax_exact_match`)) {
        self$`tax_exact_match` <- this_object$`tax_exact_match`
      }
      if (!is.null(this_object$`sort`)) {
        self$`sort` <- ApiClient$new()$deserializeObj(this_object$`sort`, "array[V2OrganelleSort]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`returned_content`)) {
        `returned_content_object` <- V2OrganelleMetadataRequestContentType$new()
        `returned_content_object`$fromJSON(jsonlite::toJSON(this_object$`returned_content`, auto_unbox = TRUE, digits = NA))
        self$`returned_content` <- `returned_content_object`
      }
      if (!is.null(this_object$`page_size`)) {
        self$`page_size` <- this_object$`page_size`
      }
      if (!is.null(this_object$`page_token`)) {
        self$`page_token` <- this_object$`page_token`
      }
      if (!is.null(this_object$`table_format`)) {
        `table_format_object` <- V2OrganelleMetadataRequestOrganelleTableFormat$new()
        `table_format_object`$fromJSON(jsonlite::toJSON(this_object$`table_format`, auto_unbox = TRUE, digits = NA))
        self$`table_format` <- `table_format_object`
      }
      if (!is.null(this_object$`include_tabular_header`)) {
        `include_tabular_header_object` <- V2IncludeTabularHeader$new()
        `include_tabular_header_object`$fromJSON(jsonlite::toJSON(this_object$`include_tabular_header`, auto_unbox = TRUE, digits = NA))
        self$`include_tabular_header` <- `include_tabular_header_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2OrganelleMetadataRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2OrganelleMetadataRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2OrganelleMetadataRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`taxons` <- ApiClient$new()$deserializeObj(this_object$`taxons`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`accessions` <- ApiClient$new()$deserializeObj(this_object$`accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`organelle_types` <- ApiClient$new()$deserializeObj(this_object$`organelle_types`, "array[V2reportsOrganelleType]", loadNamespace("ncbiopenapi"))
      self$`first_release_date` <- this_object$`first_release_date`
      self$`last_release_date` <- this_object$`last_release_date`
      self$`tax_exact_match` <- this_object$`tax_exact_match`
      self$`sort` <- ApiClient$new()$deserializeObj(this_object$`sort`, "array[V2OrganelleSort]", loadNamespace("ncbiopenapi"))
      self$`returned_content` <- V2OrganelleMetadataRequestContentType$new()$fromJSON(jsonlite::toJSON(this_object$`returned_content`, auto_unbox = TRUE, digits = NA))
      self$`page_size` <- this_object$`page_size`
      self$`page_token` <- this_object$`page_token`
      self$`table_format` <- V2OrganelleMetadataRequestOrganelleTableFormat$new()$fromJSON(jsonlite::toJSON(this_object$`table_format`, auto_unbox = TRUE, digits = NA))
      self$`include_tabular_header` <- V2IncludeTabularHeader$new()$fromJSON(jsonlite::toJSON(this_object$`include_tabular_header`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2OrganelleMetadataRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2OrganelleMetadataRequest
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
# V2OrganelleMetadataRequest$unlock()
#
## Below is an example to define the print function
# V2OrganelleMetadataRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2OrganelleMetadataRequest$lock()

