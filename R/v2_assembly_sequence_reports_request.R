#' Create a new V2AssemblySequenceReportsRequest
#'
#' @description
#' V2AssemblySequenceReportsRequest Class
#'
#' @docType class
#' @title V2AssemblySequenceReportsRequest
#' @description V2AssemblySequenceReportsRequest Class
#' @format An \code{R6Class} generator object
#' @field accession  character [optional]
#' @field chromosomes  list(character) [optional]
#' @field role_filters  list(character) [optional]
#' @field table_fields  list(character) [optional]
#' @field count_assembly_unplaced  character [optional]
#' @field page_size  integer [optional]
#' @field page_token  character [optional]
#' @field include_tabular_header  \link{V2IncludeTabularHeader} [optional]
#' @field table_format  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2AssemblySequenceReportsRequest <- R6::R6Class(
  "V2AssemblySequenceReportsRequest",
  public = list(
    `accession` = NULL,
    `chromosomes` = NULL,
    `role_filters` = NULL,
    `table_fields` = NULL,
    `count_assembly_unplaced` = NULL,
    `page_size` = NULL,
    `page_token` = NULL,
    `include_tabular_header` = NULL,
    `table_format` = NULL,

    #' @description
    #' Initialize a new V2AssemblySequenceReportsRequest class.
    #'
    #' @param accession accession
    #' @param chromosomes chromosomes
    #' @param role_filters role_filters
    #' @param table_fields table_fields
    #' @param count_assembly_unplaced count_assembly_unplaced
    #' @param page_size page_size
    #' @param page_token page_token
    #' @param include_tabular_header include_tabular_header
    #' @param table_format table_format
    #' @param ... Other optional arguments.
    initialize = function(`accession` = NULL, `chromosomes` = NULL, `role_filters` = NULL, `table_fields` = NULL, `count_assembly_unplaced` = NULL, `page_size` = NULL, `page_token` = NULL, `include_tabular_header` = NULL, `table_format` = NULL, ...) {
      if (!is.null(`accession`)) {
        if (!(is.character(`accession`) && length(`accession`) == 1)) {
          stop(paste("Error! Invalid data for `accession`. Must be a string:", `accession`))
        }
        self$`accession` <- `accession`
      }
      if (!is.null(`chromosomes`)) {
        stopifnot(is.vector(`chromosomes`), length(`chromosomes`) != 0)
        sapply(`chromosomes`, function(x) stopifnot(is.character(x)))
        self$`chromosomes` <- `chromosomes`
      }
      if (!is.null(`role_filters`)) {
        stopifnot(is.vector(`role_filters`), length(`role_filters`) != 0)
        sapply(`role_filters`, function(x) stopifnot(is.character(x)))
        self$`role_filters` <- `role_filters`
      }
      if (!is.null(`table_fields`)) {
        stopifnot(is.vector(`table_fields`), length(`table_fields`) != 0)
        sapply(`table_fields`, function(x) stopifnot(is.character(x)))
        self$`table_fields` <- `table_fields`
      }
      if (!is.null(`count_assembly_unplaced`)) {
        if (!(is.logical(`count_assembly_unplaced`) && length(`count_assembly_unplaced`) == 1)) {
          stop(paste("Error! Invalid data for `count_assembly_unplaced`. Must be a boolean:", `count_assembly_unplaced`))
        }
        self$`count_assembly_unplaced` <- `count_assembly_unplaced`
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
    #' @return V2AssemblySequenceReportsRequest as a base R list.
    #' @examples
    #' # convert array of V2AssemblySequenceReportsRequest (x) to a data frame
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
    #' Convert V2AssemblySequenceReportsRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2AssemblySequenceReportsRequestObject <- list()
      if (!is.null(self$`accession`)) {
        V2AssemblySequenceReportsRequestObject[["accession"]] <-
          self$`accession`
      }
      if (!is.null(self$`chromosomes`)) {
        V2AssemblySequenceReportsRequestObject[["chromosomes"]] <-
          self$`chromosomes`
      }
      if (!is.null(self$`role_filters`)) {
        V2AssemblySequenceReportsRequestObject[["role_filters"]] <-
          self$`role_filters`
      }
      if (!is.null(self$`table_fields`)) {
        V2AssemblySequenceReportsRequestObject[["table_fields"]] <-
          self$`table_fields`
      }
      if (!is.null(self$`count_assembly_unplaced`)) {
        V2AssemblySequenceReportsRequestObject[["count_assembly_unplaced"]] <-
          self$`count_assembly_unplaced`
      }
      if (!is.null(self$`page_size`)) {
        V2AssemblySequenceReportsRequestObject[["page_size"]] <-
          self$`page_size`
      }
      if (!is.null(self$`page_token`)) {
        V2AssemblySequenceReportsRequestObject[["page_token"]] <-
          self$`page_token`
      }
      if (!is.null(self$`include_tabular_header`)) {
        V2AssemblySequenceReportsRequestObject[["include_tabular_header"]] <-
          self$`include_tabular_header`$toSimpleType()
      }
      if (!is.null(self$`table_format`)) {
        V2AssemblySequenceReportsRequestObject[["table_format"]] <-
          self$`table_format`
      }
      return(V2AssemblySequenceReportsRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2AssemblySequenceReportsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2AssemblySequenceReportsRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accession`)) {
        self$`accession` <- this_object$`accession`
      }
      if (!is.null(this_object$`chromosomes`)) {
        self$`chromosomes` <- ApiClient$new()$deserializeObj(this_object$`chromosomes`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`role_filters`)) {
        self$`role_filters` <- ApiClient$new()$deserializeObj(this_object$`role_filters`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`table_fields`)) {
        self$`table_fields` <- ApiClient$new()$deserializeObj(this_object$`table_fields`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`count_assembly_unplaced`)) {
        self$`count_assembly_unplaced` <- this_object$`count_assembly_unplaced`
      }
      if (!is.null(this_object$`page_size`)) {
        self$`page_size` <- this_object$`page_size`
      }
      if (!is.null(this_object$`page_token`)) {
        self$`page_token` <- this_object$`page_token`
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
    #' @return V2AssemblySequenceReportsRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2AssemblySequenceReportsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2AssemblySequenceReportsRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accession` <- this_object$`accession`
      self$`chromosomes` <- ApiClient$new()$deserializeObj(this_object$`chromosomes`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`role_filters` <- ApiClient$new()$deserializeObj(this_object$`role_filters`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`table_fields` <- ApiClient$new()$deserializeObj(this_object$`table_fields`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`count_assembly_unplaced` <- this_object$`count_assembly_unplaced`
      self$`page_size` <- this_object$`page_size`
      self$`page_token` <- this_object$`page_token`
      self$`include_tabular_header` <- V2IncludeTabularHeader$new()$fromJSON(jsonlite::toJSON(this_object$`include_tabular_header`, auto_unbox = TRUE, digits = NA))
      self$`table_format` <- this_object$`table_format`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2AssemblySequenceReportsRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2AssemblySequenceReportsRequest
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
# V2AssemblySequenceReportsRequest$unlock()
#
## Below is an example to define the print function
# V2AssemblySequenceReportsRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2AssemblySequenceReportsRequest$lock()

