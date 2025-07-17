#' Create a new V2VirusAnnotationReportRequest
#'
#' @description
#' V2VirusAnnotationReportRequest Class
#'
#' @docType class
#' @title V2VirusAnnotationReportRequest
#' @description V2VirusAnnotationReportRequest Class
#' @format An \code{R6Class} generator object
#' @field filter  \link{V2VirusAnnotationFilter} [optional]
#' @field table_fields  list(character) [optional]
#' @field table_format  character [optional]
#' @field page_size  integer [optional]
#' @field page_token  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2VirusAnnotationReportRequest <- R6::R6Class(
  "V2VirusAnnotationReportRequest",
  public = list(
    `filter` = NULL,
    `table_fields` = NULL,
    `table_format` = NULL,
    `page_size` = NULL,
    `page_token` = NULL,

    #' @description
    #' Initialize a new V2VirusAnnotationReportRequest class.
    #'
    #' @param filter filter
    #' @param table_fields table_fields
    #' @param table_format table_format
    #' @param page_size page_size
    #' @param page_token page_token
    #' @param ... Other optional arguments.
    initialize = function(`filter` = NULL, `table_fields` = NULL, `table_format` = NULL, `page_size` = NULL, `page_token` = NULL, ...) {
      if (!is.null(`filter`)) {
        stopifnot(R6::is.R6(`filter`))
        self$`filter` <- `filter`
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
    #' @return V2VirusAnnotationReportRequest as a base R list.
    #' @examples
    #' # convert array of V2VirusAnnotationReportRequest (x) to a data frame
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
    #' Convert V2VirusAnnotationReportRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2VirusAnnotationReportRequestObject <- list()
      if (!is.null(self$`filter`)) {
        V2VirusAnnotationReportRequestObject[["filter"]] <-
          self$`filter`$toSimpleType()
      }
      if (!is.null(self$`table_fields`)) {
        V2VirusAnnotationReportRequestObject[["table_fields"]] <-
          self$`table_fields`
      }
      if (!is.null(self$`table_format`)) {
        V2VirusAnnotationReportRequestObject[["table_format"]] <-
          self$`table_format`
      }
      if (!is.null(self$`page_size`)) {
        V2VirusAnnotationReportRequestObject[["page_size"]] <-
          self$`page_size`
      }
      if (!is.null(self$`page_token`)) {
        V2VirusAnnotationReportRequestObject[["page_token"]] <-
          self$`page_token`
      }
      return(V2VirusAnnotationReportRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2VirusAnnotationReportRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2VirusAnnotationReportRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`filter`)) {
        `filter_object` <- V2VirusAnnotationFilter$new()
        `filter_object`$fromJSON(jsonlite::toJSON(this_object$`filter`, auto_unbox = TRUE, digits = NA))
        self$`filter` <- `filter_object`
      }
      if (!is.null(this_object$`table_fields`)) {
        self$`table_fields` <- ApiClient$new()$deserializeObj(this_object$`table_fields`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`table_format`)) {
        self$`table_format` <- this_object$`table_format`
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
    #' @return V2VirusAnnotationReportRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2VirusAnnotationReportRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2VirusAnnotationReportRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`filter` <- V2VirusAnnotationFilter$new()$fromJSON(jsonlite::toJSON(this_object$`filter`, auto_unbox = TRUE, digits = NA))
      self$`table_fields` <- ApiClient$new()$deserializeObj(this_object$`table_fields`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`table_format` <- this_object$`table_format`
      self$`page_size` <- this_object$`page_size`
      self$`page_token` <- this_object$`page_token`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2VirusAnnotationReportRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2VirusAnnotationReportRequest
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
# V2VirusAnnotationReportRequest$unlock()
#
## Below is an example to define the print function
# V2VirusAnnotationReportRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2VirusAnnotationReportRequest$lock()

