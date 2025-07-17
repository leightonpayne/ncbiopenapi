#' Create a new V2AssemblyDatasetReportsRequest
#'
#' @description
#' V2AssemblyDatasetReportsRequest Class
#'
#' @docType class
#' @title V2AssemblyDatasetReportsRequest
#' @description V2AssemblyDatasetReportsRequest Class
#' @format An \code{R6Class} generator object
#' @field taxons  list(character) [optional]
#' @field bioprojects  list(character) [optional]
#' @field biosample_ids  list(character) [optional]
#' @field assembly_names  list(character) [optional]
#' @field wgs_accessions  list(character) [optional]
#' @field accessions  list(character) [optional]
#' @field filters  \link{V2AssemblyDatasetDescriptorsFilter} [optional]
#' @field tax_exact_match  character [optional]
#' @field chromosomes  list(character) [optional]
#' @field table_fields  list(character) [optional]
#' @field returned_content  \link{V2AssemblyDatasetReportsRequestContentType} [optional]
#' @field page_size  integer [optional]
#' @field page_token  character [optional]
#' @field sort  list(\link{V2SortField}) [optional]
#' @field include_tabular_header  \link{V2IncludeTabularHeader} [optional]
#' @field table_format  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2AssemblyDatasetReportsRequest <- R6::R6Class(
  "V2AssemblyDatasetReportsRequest",
  public = list(
    `taxons` = NULL,
    `bioprojects` = NULL,
    `biosample_ids` = NULL,
    `assembly_names` = NULL,
    `wgs_accessions` = NULL,
    `accessions` = NULL,
    `filters` = NULL,
    `tax_exact_match` = NULL,
    `chromosomes` = NULL,
    `table_fields` = NULL,
    `returned_content` = NULL,
    `page_size` = NULL,
    `page_token` = NULL,
    `sort` = NULL,
    `include_tabular_header` = NULL,
    `table_format` = NULL,

    #' @description
    #' Initialize a new V2AssemblyDatasetReportsRequest class.
    #'
    #' @param taxons taxons
    #' @param bioprojects bioprojects
    #' @param biosample_ids biosample_ids
    #' @param assembly_names assembly_names
    #' @param wgs_accessions wgs_accessions
    #' @param accessions accessions
    #' @param filters filters
    #' @param tax_exact_match tax_exact_match
    #' @param chromosomes chromosomes
    #' @param table_fields table_fields
    #' @param returned_content returned_content
    #' @param page_size page_size
    #' @param page_token page_token
    #' @param sort sort
    #' @param include_tabular_header include_tabular_header
    #' @param table_format table_format
    #' @param ... Other optional arguments.
    initialize = function(`taxons` = NULL, `bioprojects` = NULL, `biosample_ids` = NULL, `assembly_names` = NULL, `wgs_accessions` = NULL, `accessions` = NULL, `filters` = NULL, `tax_exact_match` = NULL, `chromosomes` = NULL, `table_fields` = NULL, `returned_content` = NULL, `page_size` = NULL, `page_token` = NULL, `sort` = NULL, `include_tabular_header` = NULL, `table_format` = NULL, ...) {
      if (!is.null(`taxons`)) {
        stopifnot(is.vector(`taxons`), length(`taxons`) != 0)
        sapply(`taxons`, function(x) stopifnot(is.character(x)))
        self$`taxons` <- `taxons`
      }
      if (!is.null(`bioprojects`)) {
        stopifnot(is.vector(`bioprojects`), length(`bioprojects`) != 0)
        sapply(`bioprojects`, function(x) stopifnot(is.character(x)))
        self$`bioprojects` <- `bioprojects`
      }
      if (!is.null(`biosample_ids`)) {
        stopifnot(is.vector(`biosample_ids`), length(`biosample_ids`) != 0)
        sapply(`biosample_ids`, function(x) stopifnot(is.character(x)))
        self$`biosample_ids` <- `biosample_ids`
      }
      if (!is.null(`assembly_names`)) {
        stopifnot(is.vector(`assembly_names`), length(`assembly_names`) != 0)
        sapply(`assembly_names`, function(x) stopifnot(is.character(x)))
        self$`assembly_names` <- `assembly_names`
      }
      if (!is.null(`wgs_accessions`)) {
        stopifnot(is.vector(`wgs_accessions`), length(`wgs_accessions`) != 0)
        sapply(`wgs_accessions`, function(x) stopifnot(is.character(x)))
        self$`wgs_accessions` <- `wgs_accessions`
      }
      if (!is.null(`accessions`)) {
        stopifnot(is.vector(`accessions`), length(`accessions`) != 0)
        sapply(`accessions`, function(x) stopifnot(is.character(x)))
        self$`accessions` <- `accessions`
      }
      if (!is.null(`filters`)) {
        stopifnot(R6::is.R6(`filters`))
        self$`filters` <- `filters`
      }
      if (!is.null(`tax_exact_match`)) {
        if (!(is.logical(`tax_exact_match`) && length(`tax_exact_match`) == 1)) {
          stop(paste("Error! Invalid data for `tax_exact_match`. Must be a boolean:", `tax_exact_match`))
        }
        self$`tax_exact_match` <- `tax_exact_match`
      }
      if (!is.null(`chromosomes`)) {
        stopifnot(is.vector(`chromosomes`), length(`chromosomes`) != 0)
        sapply(`chromosomes`, function(x) stopifnot(is.character(x)))
        self$`chromosomes` <- `chromosomes`
      }
      if (!is.null(`table_fields`)) {
        stopifnot(is.vector(`table_fields`), length(`table_fields`) != 0)
        sapply(`table_fields`, function(x) stopifnot(is.character(x)))
        self$`table_fields` <- `table_fields`
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
      if (!is.null(`sort`)) {
        stopifnot(is.vector(`sort`), length(`sort`) != 0)
        sapply(`sort`, function(x) stopifnot(R6::is.R6(x)))
        self$`sort` <- `sort`
      }
      if (!is.null(`include_tabular_header`)) {
        if (!(`include_tabular_header` %in% c())) {
          stop(paste("Error! \"", `include_tabular_header`, "\" cannot be assigned to `include_tabular_header`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`include_tabular_header`))
        self$`include_tabular_header` <- `include_tabular_header`
      }
      if (!is.null(`table_format`)) {
        if (!(is.character(`table_format`) && length(`table_format`) == 1)) {
          stop(paste("Error! Invalid data for `table_format`. Must be a string:", `table_format`))
        }
        self$`table_format` <- `table_format`
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
    #' @return V2AssemblyDatasetReportsRequest as a base R list.
    #' @examples
    #' # convert array of V2AssemblyDatasetReportsRequest (x) to a data frame
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
    #' Convert V2AssemblyDatasetReportsRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2AssemblyDatasetReportsRequestObject <- list()
      if (!is.null(self$`taxons`)) {
        V2AssemblyDatasetReportsRequestObject[["taxons"]] <-
          self$`taxons`
      }
      if (!is.null(self$`bioprojects`)) {
        V2AssemblyDatasetReportsRequestObject[["bioprojects"]] <-
          self$`bioprojects`
      }
      if (!is.null(self$`biosample_ids`)) {
        V2AssemblyDatasetReportsRequestObject[["biosample_ids"]] <-
          self$`biosample_ids`
      }
      if (!is.null(self$`assembly_names`)) {
        V2AssemblyDatasetReportsRequestObject[["assembly_names"]] <-
          self$`assembly_names`
      }
      if (!is.null(self$`wgs_accessions`)) {
        V2AssemblyDatasetReportsRequestObject[["wgs_accessions"]] <-
          self$`wgs_accessions`
      }
      if (!is.null(self$`accessions`)) {
        V2AssemblyDatasetReportsRequestObject[["accessions"]] <-
          self$`accessions`
      }
      if (!is.null(self$`filters`)) {
        V2AssemblyDatasetReportsRequestObject[["filters"]] <-
          self$`filters`$toSimpleType()
      }
      if (!is.null(self$`tax_exact_match`)) {
        V2AssemblyDatasetReportsRequestObject[["tax_exact_match"]] <-
          self$`tax_exact_match`
      }
      if (!is.null(self$`chromosomes`)) {
        V2AssemblyDatasetReportsRequestObject[["chromosomes"]] <-
          self$`chromosomes`
      }
      if (!is.null(self$`table_fields`)) {
        V2AssemblyDatasetReportsRequestObject[["table_fields"]] <-
          self$`table_fields`
      }
      if (!is.null(self$`returned_content`)) {
        V2AssemblyDatasetReportsRequestObject[["returned_content"]] <-
          self$`returned_content`$toSimpleType()
      }
      if (!is.null(self$`page_size`)) {
        V2AssemblyDatasetReportsRequestObject[["page_size"]] <-
          self$`page_size`
      }
      if (!is.null(self$`page_token`)) {
        V2AssemblyDatasetReportsRequestObject[["page_token"]] <-
          self$`page_token`
      }
      if (!is.null(self$`sort`)) {
        V2AssemblyDatasetReportsRequestObject[["sort"]] <-
          lapply(self$`sort`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`include_tabular_header`)) {
        V2AssemblyDatasetReportsRequestObject[["include_tabular_header"]] <-
          self$`include_tabular_header`$toSimpleType()
      }
      if (!is.null(self$`table_format`)) {
        V2AssemblyDatasetReportsRequestObject[["table_format"]] <-
          self$`table_format`
      }
      return(V2AssemblyDatasetReportsRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2AssemblyDatasetReportsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2AssemblyDatasetReportsRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`taxons`)) {
        self$`taxons` <- ApiClient$new()$deserializeObj(this_object$`taxons`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`bioprojects`)) {
        self$`bioprojects` <- ApiClient$new()$deserializeObj(this_object$`bioprojects`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`biosample_ids`)) {
        self$`biosample_ids` <- ApiClient$new()$deserializeObj(this_object$`biosample_ids`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`assembly_names`)) {
        self$`assembly_names` <- ApiClient$new()$deserializeObj(this_object$`assembly_names`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`wgs_accessions`)) {
        self$`wgs_accessions` <- ApiClient$new()$deserializeObj(this_object$`wgs_accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`accessions`)) {
        self$`accessions` <- ApiClient$new()$deserializeObj(this_object$`accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`filters`)) {
        `filters_object` <- V2AssemblyDatasetDescriptorsFilter$new()
        `filters_object`$fromJSON(jsonlite::toJSON(this_object$`filters`, auto_unbox = TRUE, digits = NA))
        self$`filters` <- `filters_object`
      }
      if (!is.null(this_object$`tax_exact_match`)) {
        self$`tax_exact_match` <- this_object$`tax_exact_match`
      }
      if (!is.null(this_object$`chromosomes`)) {
        self$`chromosomes` <- ApiClient$new()$deserializeObj(this_object$`chromosomes`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`table_fields`)) {
        self$`table_fields` <- ApiClient$new()$deserializeObj(this_object$`table_fields`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`returned_content`)) {
        `returned_content_object` <- V2AssemblyDatasetReportsRequestContentType$new()
        `returned_content_object`$fromJSON(jsonlite::toJSON(this_object$`returned_content`, auto_unbox = TRUE, digits = NA))
        self$`returned_content` <- `returned_content_object`
      }
      if (!is.null(this_object$`page_size`)) {
        self$`page_size` <- this_object$`page_size`
      }
      if (!is.null(this_object$`page_token`)) {
        self$`page_token` <- this_object$`page_token`
      }
      if (!is.null(this_object$`sort`)) {
        self$`sort` <- ApiClient$new()$deserializeObj(this_object$`sort`, "array[V2SortField]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`include_tabular_header`)) {
        `include_tabular_header_object` <- V2IncludeTabularHeader$new()
        `include_tabular_header_object`$fromJSON(jsonlite::toJSON(this_object$`include_tabular_header`, auto_unbox = TRUE, digits = NA))
        self$`include_tabular_header` <- `include_tabular_header_object`
      }
      if (!is.null(this_object$`table_format`)) {
        self$`table_format` <- this_object$`table_format`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2AssemblyDatasetReportsRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2AssemblyDatasetReportsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2AssemblyDatasetReportsRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`taxons` <- ApiClient$new()$deserializeObj(this_object$`taxons`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`bioprojects` <- ApiClient$new()$deserializeObj(this_object$`bioprojects`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`biosample_ids` <- ApiClient$new()$deserializeObj(this_object$`biosample_ids`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`assembly_names` <- ApiClient$new()$deserializeObj(this_object$`assembly_names`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`wgs_accessions` <- ApiClient$new()$deserializeObj(this_object$`wgs_accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`accessions` <- ApiClient$new()$deserializeObj(this_object$`accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`filters` <- V2AssemblyDatasetDescriptorsFilter$new()$fromJSON(jsonlite::toJSON(this_object$`filters`, auto_unbox = TRUE, digits = NA))
      self$`tax_exact_match` <- this_object$`tax_exact_match`
      self$`chromosomes` <- ApiClient$new()$deserializeObj(this_object$`chromosomes`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`table_fields` <- ApiClient$new()$deserializeObj(this_object$`table_fields`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`returned_content` <- V2AssemblyDatasetReportsRequestContentType$new()$fromJSON(jsonlite::toJSON(this_object$`returned_content`, auto_unbox = TRUE, digits = NA))
      self$`page_size` <- this_object$`page_size`
      self$`page_token` <- this_object$`page_token`
      self$`sort` <- ApiClient$new()$deserializeObj(this_object$`sort`, "array[V2SortField]", loadNamespace("ncbiopenapi"))
      self$`include_tabular_header` <- V2IncludeTabularHeader$new()$fromJSON(jsonlite::toJSON(this_object$`include_tabular_header`, auto_unbox = TRUE, digits = NA))
      self$`table_format` <- this_object$`table_format`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2AssemblyDatasetReportsRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2AssemblyDatasetReportsRequest
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
# V2AssemblyDatasetReportsRequest$unlock()
#
## Below is an example to define the print function
# V2AssemblyDatasetReportsRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2AssemblyDatasetReportsRequest$lock()

