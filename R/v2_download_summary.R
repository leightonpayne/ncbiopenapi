#' Create a new V2DownloadSummary
#'
#' @description
#' V2DownloadSummary Class
#'
#' @docType class
#' @title V2DownloadSummary
#' @description V2DownloadSummary Class
#' @format An \code{R6Class} generator object
#' @field record_count  integer [optional]
#' @field assembly_count  integer [optional]
#' @field resource_updated_on  character [optional]
#' @field hydrated  \link{V2DownloadSummaryHydrated} [optional]
#' @field dehydrated  \link{V2DownloadSummaryDehydrated} [optional]
#' @field errors  list(\link{V2reportsError}) [optional]
#' @field messages  list(\link{V2reportsMessage}) [optional]
#' @field available_files  \link{V2DownloadSummaryAvailableFiles} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2DownloadSummary <- R6::R6Class(
  "V2DownloadSummary",
  public = list(
    `record_count` = NULL,
    `assembly_count` = NULL,
    `resource_updated_on` = NULL,
    `hydrated` = NULL,
    `dehydrated` = NULL,
    `errors` = NULL,
    `messages` = NULL,
    `available_files` = NULL,

    #' @description
    #' Initialize a new V2DownloadSummary class.
    #'
    #' @param record_count record_count
    #' @param assembly_count assembly_count
    #' @param resource_updated_on resource_updated_on
    #' @param hydrated hydrated
    #' @param dehydrated dehydrated
    #' @param errors errors
    #' @param messages messages
    #' @param available_files available_files
    #' @param ... Other optional arguments.
    initialize = function(`record_count` = NULL, `assembly_count` = NULL, `resource_updated_on` = NULL, `hydrated` = NULL, `dehydrated` = NULL, `errors` = NULL, `messages` = NULL, `available_files` = NULL, ...) {
      if (!is.null(`record_count`)) {
        if (!(is.numeric(`record_count`) && length(`record_count`) == 1)) {
          stop(paste("Error! Invalid data for `record_count`. Must be an integer:", `record_count`))
        }
        self$`record_count` <- `record_count`
      }
      if (!is.null(`assembly_count`)) {
        if (!(is.numeric(`assembly_count`) && length(`assembly_count`) == 1)) {
          stop(paste("Error! Invalid data for `assembly_count`. Must be an integer:", `assembly_count`))
        }
        self$`assembly_count` <- `assembly_count`
      }
      if (!is.null(`resource_updated_on`)) {
        if (!is.character(`resource_updated_on`)) {
          stop(paste("Error! Invalid data for `resource_updated_on`. Must be a string:", `resource_updated_on`))
        }
        self$`resource_updated_on` <- `resource_updated_on`
      }
      if (!is.null(`hydrated`)) {
        stopifnot(R6::is.R6(`hydrated`))
        self$`hydrated` <- `hydrated`
      }
      if (!is.null(`dehydrated`)) {
        stopifnot(R6::is.R6(`dehydrated`))
        self$`dehydrated` <- `dehydrated`
      }
      if (!is.null(`errors`)) {
        stopifnot(is.vector(`errors`), length(`errors`) != 0)
        sapply(`errors`, function(x) stopifnot(R6::is.R6(x)))
        self$`errors` <- `errors`
      }
      if (!is.null(`messages`)) {
        stopifnot(is.vector(`messages`), length(`messages`) != 0)
        sapply(`messages`, function(x) stopifnot(R6::is.R6(x)))
        self$`messages` <- `messages`
      }
      if (!is.null(`available_files`)) {
        stopifnot(R6::is.R6(`available_files`))
        self$`available_files` <- `available_files`
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
    #' @return V2DownloadSummary as a base R list.
    #' @examples
    #' # convert array of V2DownloadSummary (x) to a data frame
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
    #' Convert V2DownloadSummary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2DownloadSummaryObject <- list()
      if (!is.null(self$`record_count`)) {
        V2DownloadSummaryObject[["record_count"]] <-
          self$`record_count`
      }
      if (!is.null(self$`assembly_count`)) {
        V2DownloadSummaryObject[["assembly_count"]] <-
          self$`assembly_count`
      }
      if (!is.null(self$`resource_updated_on`)) {
        V2DownloadSummaryObject[["resource_updated_on"]] <-
          self$`resource_updated_on`
      }
      if (!is.null(self$`hydrated`)) {
        V2DownloadSummaryObject[["hydrated"]] <-
          self$`hydrated`$toSimpleType()
      }
      if (!is.null(self$`dehydrated`)) {
        V2DownloadSummaryObject[["dehydrated"]] <-
          self$`dehydrated`$toSimpleType()
      }
      if (!is.null(self$`errors`)) {
        V2DownloadSummaryObject[["errors"]] <-
          lapply(self$`errors`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`messages`)) {
        V2DownloadSummaryObject[["messages"]] <-
          lapply(self$`messages`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`available_files`)) {
        V2DownloadSummaryObject[["available_files"]] <-
          self$`available_files`$toSimpleType()
      }
      return(V2DownloadSummaryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2DownloadSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2DownloadSummary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`record_count`)) {
        self$`record_count` <- this_object$`record_count`
      }
      if (!is.null(this_object$`assembly_count`)) {
        self$`assembly_count` <- this_object$`assembly_count`
      }
      if (!is.null(this_object$`resource_updated_on`)) {
        self$`resource_updated_on` <- this_object$`resource_updated_on`
      }
      if (!is.null(this_object$`hydrated`)) {
        `hydrated_object` <- V2DownloadSummaryHydrated$new()
        `hydrated_object`$fromJSON(jsonlite::toJSON(this_object$`hydrated`, auto_unbox = TRUE, digits = NA))
        self$`hydrated` <- `hydrated_object`
      }
      if (!is.null(this_object$`dehydrated`)) {
        `dehydrated_object` <- V2DownloadSummaryDehydrated$new()
        `dehydrated_object`$fromJSON(jsonlite::toJSON(this_object$`dehydrated`, auto_unbox = TRUE, digits = NA))
        self$`dehydrated` <- `dehydrated_object`
      }
      if (!is.null(this_object$`errors`)) {
        self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[V2reportsError]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`messages`)) {
        self$`messages` <- ApiClient$new()$deserializeObj(this_object$`messages`, "array[V2reportsMessage]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`available_files`)) {
        `available_files_object` <- V2DownloadSummaryAvailableFiles$new()
        `available_files_object`$fromJSON(jsonlite::toJSON(this_object$`available_files`, auto_unbox = TRUE, digits = NA))
        self$`available_files` <- `available_files_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2DownloadSummary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2DownloadSummary
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2DownloadSummary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`record_count` <- this_object$`record_count`
      self$`assembly_count` <- this_object$`assembly_count`
      self$`resource_updated_on` <- this_object$`resource_updated_on`
      self$`hydrated` <- V2DownloadSummaryHydrated$new()$fromJSON(jsonlite::toJSON(this_object$`hydrated`, auto_unbox = TRUE, digits = NA))
      self$`dehydrated` <- V2DownloadSummaryDehydrated$new()$fromJSON(jsonlite::toJSON(this_object$`dehydrated`, auto_unbox = TRUE, digits = NA))
      self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[V2reportsError]", loadNamespace("ncbiopenapi"))
      self$`messages` <- ApiClient$new()$deserializeObj(this_object$`messages`, "array[V2reportsMessage]", loadNamespace("ncbiopenapi"))
      self$`available_files` <- V2DownloadSummaryAvailableFiles$new()$fromJSON(jsonlite::toJSON(this_object$`available_files`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2DownloadSummary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2DownloadSummary
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
# V2DownloadSummary$unlock()
#
## Below is an example to define the print function
# V2DownloadSummary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2DownloadSummary$lock()

