#' Create a new V2GeneDatasetReportsRequest
#'
#' @description
#' V2GeneDatasetReportsRequest Class
#'
#' @docType class
#' @title V2GeneDatasetReportsRequest
#' @description V2GeneDatasetReportsRequest Class
#' @format An \code{R6Class} generator object
#' @field returned_content  \link{V2GeneDatasetReportsRequestContentType} [optional]
#' @field gene_ids  list(integer) [optional]
#' @field accessions  list(character) [optional]
#' @field symbols_for_taxon  \link{V2GeneDatasetReportsRequestSymbolsForTaxon} [optional]
#' @field taxon  character [optional]
#' @field locus_tags  list(character) [optional]
#' @field table_fields  list(character) [optional]
#' @field table_format  character [optional]
#' @field include_tabular_header  \link{V2IncludeTabularHeader} [optional]
#' @field page_size  integer [optional]
#' @field page_token  character [optional]
#' @field query  character [optional]
#' @field types  list(\link{V2GeneType}) [optional]
#' @field accession_filter  list(character) [optional]
#' @field tax_search_subtree  character [optional]
#' @field sort  list(\link{V2SortField}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2GeneDatasetReportsRequest <- R6::R6Class(
  "V2GeneDatasetReportsRequest",
  public = list(
    `returned_content` = NULL,
    `gene_ids` = NULL,
    `accessions` = NULL,
    `symbols_for_taxon` = NULL,
    `taxon` = NULL,
    `locus_tags` = NULL,
    `table_fields` = NULL,
    `table_format` = NULL,
    `include_tabular_header` = NULL,
    `page_size` = NULL,
    `page_token` = NULL,
    `query` = NULL,
    `types` = NULL,
    `accession_filter` = NULL,
    `tax_search_subtree` = NULL,
    `sort` = NULL,

    #' @description
    #' Initialize a new V2GeneDatasetReportsRequest class.
    #'
    #' @param returned_content returned_content
    #' @param gene_ids gene_ids
    #' @param accessions accessions
    #' @param symbols_for_taxon symbols_for_taxon
    #' @param taxon taxon
    #' @param locus_tags locus_tags
    #' @param table_fields table_fields
    #' @param table_format table_format
    #' @param include_tabular_header include_tabular_header
    #' @param page_size page_size
    #' @param page_token page_token
    #' @param query query
    #' @param types types
    #' @param accession_filter accession_filter
    #' @param tax_search_subtree tax_search_subtree
    #' @param sort sort
    #' @param ... Other optional arguments.
    initialize = function(`returned_content` = NULL, `gene_ids` = NULL, `accessions` = NULL, `symbols_for_taxon` = NULL, `taxon` = NULL, `locus_tags` = NULL, `table_fields` = NULL, `table_format` = NULL, `include_tabular_header` = NULL, `page_size` = NULL, `page_token` = NULL, `query` = NULL, `types` = NULL, `accession_filter` = NULL, `tax_search_subtree` = NULL, `sort` = NULL, ...) {
      if (!is.null(`returned_content`)) {
        if (!(`returned_content` %in% c())) {
          stop(paste("Error! \"", `returned_content`, "\" cannot be assigned to `returned_content`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`returned_content`))
        self$`returned_content` <- `returned_content`
      }
      if (!is.null(`gene_ids`)) {
        stopifnot(is.vector(`gene_ids`), length(`gene_ids`) != 0)
        sapply(`gene_ids`, function(x) stopifnot(is.character(x)))
        self$`gene_ids` <- `gene_ids`
      }
      if (!is.null(`accessions`)) {
        stopifnot(is.vector(`accessions`), length(`accessions`) != 0)
        sapply(`accessions`, function(x) stopifnot(is.character(x)))
        self$`accessions` <- `accessions`
      }
      if (!is.null(`symbols_for_taxon`)) {
        stopifnot(R6::is.R6(`symbols_for_taxon`))
        self$`symbols_for_taxon` <- `symbols_for_taxon`
      }
      if (!is.null(`taxon`)) {
        if (!(is.character(`taxon`) && length(`taxon`) == 1)) {
          stop(paste("Error! Invalid data for `taxon`. Must be a string:", `taxon`))
        }
        self$`taxon` <- `taxon`
      }
      if (!is.null(`locus_tags`)) {
        stopifnot(is.vector(`locus_tags`), length(`locus_tags`) != 0)
        sapply(`locus_tags`, function(x) stopifnot(is.character(x)))
        self$`locus_tags` <- `locus_tags`
      }
      if (!is.null(`table_fields`)) {
        stopifnot(is.vector(`table_fields`), length(`table_fields`) != 0)
        sapply(`table_fields`, function(x) stopifnot(is.character(x)))
        self$`table_fields` <- `table_fields`
      }
      if (!is.null(`table_format`)) {
        if (!(is.character(`table_format`) && length(`table_format`) == 1)) {
          stop(paste("Error! Invalid data for `table_format`. Must be a string:", `table_format`))
        }
        self$`table_format` <- `table_format`
      }
      if (!is.null(`include_tabular_header`)) {
        if (!(`include_tabular_header` %in% c())) {
          stop(paste("Error! \"", `include_tabular_header`, "\" cannot be assigned to `include_tabular_header`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`include_tabular_header`))
        self$`include_tabular_header` <- `include_tabular_header`
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
      if (!is.null(`query`)) {
        if (!(is.character(`query`) && length(`query`) == 1)) {
          stop(paste("Error! Invalid data for `query`. Must be a string:", `query`))
        }
        self$`query` <- `query`
      }
      if (!is.null(`types`)) {
        stopifnot(is.vector(`types`), length(`types`) != 0)
        sapply(`types`, function(x) stopifnot(R6::is.R6(x)))
        self$`types` <- `types`
      }
      if (!is.null(`accession_filter`)) {
        stopifnot(is.vector(`accession_filter`), length(`accession_filter`) != 0)
        sapply(`accession_filter`, function(x) stopifnot(is.character(x)))
        self$`accession_filter` <- `accession_filter`
      }
      if (!is.null(`tax_search_subtree`)) {
        if (!(is.logical(`tax_search_subtree`) && length(`tax_search_subtree`) == 1)) {
          stop(paste("Error! Invalid data for `tax_search_subtree`. Must be a boolean:", `tax_search_subtree`))
        }
        self$`tax_search_subtree` <- `tax_search_subtree`
      }
      if (!is.null(`sort`)) {
        stopifnot(is.vector(`sort`), length(`sort`) != 0)
        sapply(`sort`, function(x) stopifnot(R6::is.R6(x)))
        self$`sort` <- `sort`
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
    #' @return V2GeneDatasetReportsRequest as a base R list.
    #' @examples
    #' # convert array of V2GeneDatasetReportsRequest (x) to a data frame
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
    #' Convert V2GeneDatasetReportsRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2GeneDatasetReportsRequestObject <- list()
      if (!is.null(self$`returned_content`)) {
        V2GeneDatasetReportsRequestObject[["returned_content"]] <-
          self$`returned_content`$toSimpleType()
      }
      if (!is.null(self$`gene_ids`)) {
        V2GeneDatasetReportsRequestObject[["gene_ids"]] <-
          self$`gene_ids`
      }
      if (!is.null(self$`accessions`)) {
        V2GeneDatasetReportsRequestObject[["accessions"]] <-
          self$`accessions`
      }
      if (!is.null(self$`symbols_for_taxon`)) {
        V2GeneDatasetReportsRequestObject[["symbols_for_taxon"]] <-
          self$`symbols_for_taxon`$toSimpleType()
      }
      if (!is.null(self$`taxon`)) {
        V2GeneDatasetReportsRequestObject[["taxon"]] <-
          self$`taxon`
      }
      if (!is.null(self$`locus_tags`)) {
        V2GeneDatasetReportsRequestObject[["locus_tags"]] <-
          self$`locus_tags`
      }
      if (!is.null(self$`table_fields`)) {
        V2GeneDatasetReportsRequestObject[["table_fields"]] <-
          self$`table_fields`
      }
      if (!is.null(self$`table_format`)) {
        V2GeneDatasetReportsRequestObject[["table_format"]] <-
          self$`table_format`
      }
      if (!is.null(self$`include_tabular_header`)) {
        V2GeneDatasetReportsRequestObject[["include_tabular_header"]] <-
          self$`include_tabular_header`$toSimpleType()
      }
      if (!is.null(self$`page_size`)) {
        V2GeneDatasetReportsRequestObject[["page_size"]] <-
          self$`page_size`
      }
      if (!is.null(self$`page_token`)) {
        V2GeneDatasetReportsRequestObject[["page_token"]] <-
          self$`page_token`
      }
      if (!is.null(self$`query`)) {
        V2GeneDatasetReportsRequestObject[["query"]] <-
          self$`query`
      }
      if (!is.null(self$`types`)) {
        V2GeneDatasetReportsRequestObject[["types"]] <-
          lapply(self$`types`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`accession_filter`)) {
        V2GeneDatasetReportsRequestObject[["accession_filter"]] <-
          self$`accession_filter`
      }
      if (!is.null(self$`tax_search_subtree`)) {
        V2GeneDatasetReportsRequestObject[["tax_search_subtree"]] <-
          self$`tax_search_subtree`
      }
      if (!is.null(self$`sort`)) {
        V2GeneDatasetReportsRequestObject[["sort"]] <-
          lapply(self$`sort`, function(x) x$toSimpleType())
      }
      return(V2GeneDatasetReportsRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GeneDatasetReportsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GeneDatasetReportsRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`returned_content`)) {
        `returned_content_object` <- V2GeneDatasetReportsRequestContentType$new()
        `returned_content_object`$fromJSON(jsonlite::toJSON(this_object$`returned_content`, auto_unbox = TRUE, digits = NA))
        self$`returned_content` <- `returned_content_object`
      }
      if (!is.null(this_object$`gene_ids`)) {
        self$`gene_ids` <- ApiClient$new()$deserializeObj(this_object$`gene_ids`, "array[integer]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`accessions`)) {
        self$`accessions` <- ApiClient$new()$deserializeObj(this_object$`accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`symbols_for_taxon`)) {
        `symbols_for_taxon_object` <- V2GeneDatasetReportsRequestSymbolsForTaxon$new()
        `symbols_for_taxon_object`$fromJSON(jsonlite::toJSON(this_object$`symbols_for_taxon`, auto_unbox = TRUE, digits = NA))
        self$`symbols_for_taxon` <- `symbols_for_taxon_object`
      }
      if (!is.null(this_object$`taxon`)) {
        self$`taxon` <- this_object$`taxon`
      }
      if (!is.null(this_object$`locus_tags`)) {
        self$`locus_tags` <- ApiClient$new()$deserializeObj(this_object$`locus_tags`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`table_fields`)) {
        self$`table_fields` <- ApiClient$new()$deserializeObj(this_object$`table_fields`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`table_format`)) {
        self$`table_format` <- this_object$`table_format`
      }
      if (!is.null(this_object$`include_tabular_header`)) {
        `include_tabular_header_object` <- V2IncludeTabularHeader$new()
        `include_tabular_header_object`$fromJSON(jsonlite::toJSON(this_object$`include_tabular_header`, auto_unbox = TRUE, digits = NA))
        self$`include_tabular_header` <- `include_tabular_header_object`
      }
      if (!is.null(this_object$`page_size`)) {
        self$`page_size` <- this_object$`page_size`
      }
      if (!is.null(this_object$`page_token`)) {
        self$`page_token` <- this_object$`page_token`
      }
      if (!is.null(this_object$`query`)) {
        self$`query` <- this_object$`query`
      }
      if (!is.null(this_object$`types`)) {
        self$`types` <- ApiClient$new()$deserializeObj(this_object$`types`, "array[V2GeneType]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`accession_filter`)) {
        self$`accession_filter` <- ApiClient$new()$deserializeObj(this_object$`accession_filter`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`tax_search_subtree`)) {
        self$`tax_search_subtree` <- this_object$`tax_search_subtree`
      }
      if (!is.null(this_object$`sort`)) {
        self$`sort` <- ApiClient$new()$deserializeObj(this_object$`sort`, "array[V2SortField]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2GeneDatasetReportsRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GeneDatasetReportsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GeneDatasetReportsRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`returned_content` <- V2GeneDatasetReportsRequestContentType$new()$fromJSON(jsonlite::toJSON(this_object$`returned_content`, auto_unbox = TRUE, digits = NA))
      self$`gene_ids` <- ApiClient$new()$deserializeObj(this_object$`gene_ids`, "array[integer]", loadNamespace("ncbiopenapi"))
      self$`accessions` <- ApiClient$new()$deserializeObj(this_object$`accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`symbols_for_taxon` <- V2GeneDatasetReportsRequestSymbolsForTaxon$new()$fromJSON(jsonlite::toJSON(this_object$`symbols_for_taxon`, auto_unbox = TRUE, digits = NA))
      self$`taxon` <- this_object$`taxon`
      self$`locus_tags` <- ApiClient$new()$deserializeObj(this_object$`locus_tags`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`table_fields` <- ApiClient$new()$deserializeObj(this_object$`table_fields`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`table_format` <- this_object$`table_format`
      self$`include_tabular_header` <- V2IncludeTabularHeader$new()$fromJSON(jsonlite::toJSON(this_object$`include_tabular_header`, auto_unbox = TRUE, digits = NA))
      self$`page_size` <- this_object$`page_size`
      self$`page_token` <- this_object$`page_token`
      self$`query` <- this_object$`query`
      self$`types` <- ApiClient$new()$deserializeObj(this_object$`types`, "array[V2GeneType]", loadNamespace("ncbiopenapi"))
      self$`accession_filter` <- ApiClient$new()$deserializeObj(this_object$`accession_filter`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`tax_search_subtree` <- this_object$`tax_search_subtree`
      self$`sort` <- ApiClient$new()$deserializeObj(this_object$`sort`, "array[V2SortField]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2GeneDatasetReportsRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2GeneDatasetReportsRequest
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
# V2GeneDatasetReportsRequest$unlock()
#
## Below is an example to define the print function
# V2GeneDatasetReportsRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2GeneDatasetReportsRequest$lock()

