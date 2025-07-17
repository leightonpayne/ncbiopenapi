#' Create a new V2GenomeAnnotationRequest
#'
#' @description
#' V2GenomeAnnotationRequest Class
#'
#' @docType class
#' @title V2GenomeAnnotationRequest
#' @description V2GenomeAnnotationRequest Class
#' @format An \code{R6Class} generator object
#' @field accession  character [optional]
#' @field annotation_ids  list(character) [optional]
#' @field symbols  list(character) [optional]
#' @field locations  list(character) [optional]
#' @field gene_types  list(character) [optional]
#' @field search_text  list(character) [optional]
#' @field sort  list(\link{V2SortField}) [optional]
#' @field include_annotation_type  list(\link{V2GenomeAnnotationRequestAnnotationType}) [optional]
#' @field page_size  integer [optional]
#' @field table_fields  list(character) [optional]
#' @field table_format  \link{V2GenomeAnnotationRequestGenomeAnnotationTableFormat} [optional]
#' @field include_tabular_header  \link{V2IncludeTabularHeader} [optional]
#' @field page_token  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2GenomeAnnotationRequest <- R6::R6Class(
  "V2GenomeAnnotationRequest",
  public = list(
    `accession` = NULL,
    `annotation_ids` = NULL,
    `symbols` = NULL,
    `locations` = NULL,
    `gene_types` = NULL,
    `search_text` = NULL,
    `sort` = NULL,
    `include_annotation_type` = NULL,
    `page_size` = NULL,
    `table_fields` = NULL,
    `table_format` = NULL,
    `include_tabular_header` = NULL,
    `page_token` = NULL,

    #' @description
    #' Initialize a new V2GenomeAnnotationRequest class.
    #'
    #' @param accession accession
    #' @param annotation_ids annotation_ids
    #' @param symbols symbols
    #' @param locations locations
    #' @param gene_types gene_types
    #' @param search_text search_text
    #' @param sort sort
    #' @param include_annotation_type include_annotation_type
    #' @param page_size page_size
    #' @param table_fields table_fields
    #' @param table_format table_format
    #' @param include_tabular_header include_tabular_header
    #' @param page_token page_token
    #' @param ... Other optional arguments.
    initialize = function(`accession` = NULL, `annotation_ids` = NULL, `symbols` = NULL, `locations` = NULL, `gene_types` = NULL, `search_text` = NULL, `sort` = NULL, `include_annotation_type` = NULL, `page_size` = NULL, `table_fields` = NULL, `table_format` = NULL, `include_tabular_header` = NULL, `page_token` = NULL, ...) {
      if (!is.null(`accession`)) {
        if (!(is.character(`accession`) && length(`accession`) == 1)) {
          stop(paste("Error! Invalid data for `accession`. Must be a string:", `accession`))
        }
        self$`accession` <- `accession`
      }
      if (!is.null(`annotation_ids`)) {
        stopifnot(is.vector(`annotation_ids`), length(`annotation_ids`) != 0)
        sapply(`annotation_ids`, function(x) stopifnot(is.character(x)))
        self$`annotation_ids` <- `annotation_ids`
      }
      if (!is.null(`symbols`)) {
        stopifnot(is.vector(`symbols`), length(`symbols`) != 0)
        sapply(`symbols`, function(x) stopifnot(is.character(x)))
        self$`symbols` <- `symbols`
      }
      if (!is.null(`locations`)) {
        stopifnot(is.vector(`locations`), length(`locations`) != 0)
        sapply(`locations`, function(x) stopifnot(is.character(x)))
        self$`locations` <- `locations`
      }
      if (!is.null(`gene_types`)) {
        stopifnot(is.vector(`gene_types`), length(`gene_types`) != 0)
        sapply(`gene_types`, function(x) stopifnot(is.character(x)))
        self$`gene_types` <- `gene_types`
      }
      if (!is.null(`search_text`)) {
        stopifnot(is.vector(`search_text`), length(`search_text`) != 0)
        sapply(`search_text`, function(x) stopifnot(is.character(x)))
        self$`search_text` <- `search_text`
      }
      if (!is.null(`sort`)) {
        stopifnot(is.vector(`sort`), length(`sort`) != 0)
        sapply(`sort`, function(x) stopifnot(R6::is.R6(x)))
        self$`sort` <- `sort`
      }
      if (!is.null(`include_annotation_type`)) {
        stopifnot(is.vector(`include_annotation_type`), length(`include_annotation_type`) != 0)
        sapply(`include_annotation_type`, function(x) stopifnot(R6::is.R6(x)))
        self$`include_annotation_type` <- `include_annotation_type`
      }
      if (!is.null(`page_size`)) {
        if (!(is.numeric(`page_size`) && length(`page_size`) == 1)) {
          stop(paste("Error! Invalid data for `page_size`. Must be an integer:", `page_size`))
        }
        self$`page_size` <- `page_size`
      }
      if (!is.null(`table_fields`)) {
        stopifnot(is.vector(`table_fields`), length(`table_fields`) != 0)
        sapply(`table_fields`, function(x) stopifnot(is.character(x)))
        self$`table_fields` <- `table_fields`
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
    #' @return V2GenomeAnnotationRequest as a base R list.
    #' @examples
    #' # convert array of V2GenomeAnnotationRequest (x) to a data frame
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
    #' Convert V2GenomeAnnotationRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2GenomeAnnotationRequestObject <- list()
      if (!is.null(self$`accession`)) {
        V2GenomeAnnotationRequestObject[["accession"]] <-
          self$`accession`
      }
      if (!is.null(self$`annotation_ids`)) {
        V2GenomeAnnotationRequestObject[["annotation_ids"]] <-
          self$`annotation_ids`
      }
      if (!is.null(self$`symbols`)) {
        V2GenomeAnnotationRequestObject[["symbols"]] <-
          self$`symbols`
      }
      if (!is.null(self$`locations`)) {
        V2GenomeAnnotationRequestObject[["locations"]] <-
          self$`locations`
      }
      if (!is.null(self$`gene_types`)) {
        V2GenomeAnnotationRequestObject[["gene_types"]] <-
          self$`gene_types`
      }
      if (!is.null(self$`search_text`)) {
        V2GenomeAnnotationRequestObject[["search_text"]] <-
          self$`search_text`
      }
      if (!is.null(self$`sort`)) {
        V2GenomeAnnotationRequestObject[["sort"]] <-
          lapply(self$`sort`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`include_annotation_type`)) {
        V2GenomeAnnotationRequestObject[["include_annotation_type"]] <-
          lapply(self$`include_annotation_type`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`page_size`)) {
        V2GenomeAnnotationRequestObject[["page_size"]] <-
          self$`page_size`
      }
      if (!is.null(self$`table_fields`)) {
        V2GenomeAnnotationRequestObject[["table_fields"]] <-
          self$`table_fields`
      }
      if (!is.null(self$`table_format`)) {
        V2GenomeAnnotationRequestObject[["table_format"]] <-
          self$`table_format`$toSimpleType()
      }
      if (!is.null(self$`include_tabular_header`)) {
        V2GenomeAnnotationRequestObject[["include_tabular_header"]] <-
          self$`include_tabular_header`$toSimpleType()
      }
      if (!is.null(self$`page_token`)) {
        V2GenomeAnnotationRequestObject[["page_token"]] <-
          self$`page_token`
      }
      return(V2GenomeAnnotationRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GenomeAnnotationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GenomeAnnotationRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accession`)) {
        self$`accession` <- this_object$`accession`
      }
      if (!is.null(this_object$`annotation_ids`)) {
        self$`annotation_ids` <- ApiClient$new()$deserializeObj(this_object$`annotation_ids`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`symbols`)) {
        self$`symbols` <- ApiClient$new()$deserializeObj(this_object$`symbols`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`locations`)) {
        self$`locations` <- ApiClient$new()$deserializeObj(this_object$`locations`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`gene_types`)) {
        self$`gene_types` <- ApiClient$new()$deserializeObj(this_object$`gene_types`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`search_text`)) {
        self$`search_text` <- ApiClient$new()$deserializeObj(this_object$`search_text`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`sort`)) {
        self$`sort` <- ApiClient$new()$deserializeObj(this_object$`sort`, "array[V2SortField]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`include_annotation_type`)) {
        self$`include_annotation_type` <- ApiClient$new()$deserializeObj(this_object$`include_annotation_type`, "array[V2GenomeAnnotationRequestAnnotationType]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`page_size`)) {
        self$`page_size` <- this_object$`page_size`
      }
      if (!is.null(this_object$`table_fields`)) {
        self$`table_fields` <- ApiClient$new()$deserializeObj(this_object$`table_fields`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`table_format`)) {
        `table_format_object` <- V2GenomeAnnotationRequestGenomeAnnotationTableFormat$new()
        `table_format_object`$fromJSON(jsonlite::toJSON(this_object$`table_format`, auto_unbox = TRUE, digits = NA))
        self$`table_format` <- `table_format_object`
      }
      if (!is.null(this_object$`include_tabular_header`)) {
        `include_tabular_header_object` <- V2IncludeTabularHeader$new()
        `include_tabular_header_object`$fromJSON(jsonlite::toJSON(this_object$`include_tabular_header`, auto_unbox = TRUE, digits = NA))
        self$`include_tabular_header` <- `include_tabular_header_object`
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
    #' @return V2GenomeAnnotationRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GenomeAnnotationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GenomeAnnotationRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accession` <- this_object$`accession`
      self$`annotation_ids` <- ApiClient$new()$deserializeObj(this_object$`annotation_ids`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`symbols` <- ApiClient$new()$deserializeObj(this_object$`symbols`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`locations` <- ApiClient$new()$deserializeObj(this_object$`locations`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`gene_types` <- ApiClient$new()$deserializeObj(this_object$`gene_types`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`search_text` <- ApiClient$new()$deserializeObj(this_object$`search_text`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`sort` <- ApiClient$new()$deserializeObj(this_object$`sort`, "array[V2SortField]", loadNamespace("ncbiopenapi"))
      self$`include_annotation_type` <- ApiClient$new()$deserializeObj(this_object$`include_annotation_type`, "array[V2GenomeAnnotationRequestAnnotationType]", loadNamespace("ncbiopenapi"))
      self$`page_size` <- this_object$`page_size`
      self$`table_fields` <- ApiClient$new()$deserializeObj(this_object$`table_fields`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`table_format` <- V2GenomeAnnotationRequestGenomeAnnotationTableFormat$new()$fromJSON(jsonlite::toJSON(this_object$`table_format`, auto_unbox = TRUE, digits = NA))
      self$`include_tabular_header` <- V2IncludeTabularHeader$new()$fromJSON(jsonlite::toJSON(this_object$`include_tabular_header`, auto_unbox = TRUE, digits = NA))
      self$`page_token` <- this_object$`page_token`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2GenomeAnnotationRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2GenomeAnnotationRequest
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
# V2GenomeAnnotationRequest$unlock()
#
## Below is an example to define the print function
# V2GenomeAnnotationRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2GenomeAnnotationRequest$lock()

