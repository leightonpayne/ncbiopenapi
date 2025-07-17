#' Create a new V2reportsBioSampleDataReportPage
#'
#' @description
#' V2reportsBioSampleDataReportPage Class
#'
#' @docType class
#' @title V2reportsBioSampleDataReportPage
#' @description V2reportsBioSampleDataReportPage Class
#' @format An \code{R6Class} generator object
#' @field reports  list(\link{V2reportsBioSampleDataReport}) [optional]
#' @field total_count  integer [optional]
#' @field next_page_token  character [optional]
#' @field messages  list(\link{V2reportsMessage}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsBioSampleDataReportPage <- R6::R6Class(
  "V2reportsBioSampleDataReportPage",
  public = list(
    `reports` = NULL,
    `total_count` = NULL,
    `next_page_token` = NULL,
    `messages` = NULL,

    #' @description
    #' Initialize a new V2reportsBioSampleDataReportPage class.
    #'
    #' @param reports reports
    #' @param total_count total_count
    #' @param next_page_token next_page_token
    #' @param messages messages
    #' @param ... Other optional arguments.
    initialize = function(`reports` = NULL, `total_count` = NULL, `next_page_token` = NULL, `messages` = NULL, ...) {
      if (!is.null(`reports`)) {
        stopifnot(is.vector(`reports`), length(`reports`) != 0)
        sapply(`reports`, function(x) stopifnot(R6::is.R6(x)))
        self$`reports` <- `reports`
      }
      if (!is.null(`total_count`)) {
        if (!(is.numeric(`total_count`) && length(`total_count`) == 1)) {
          stop(paste("Error! Invalid data for `total_count`. Must be an integer:", `total_count`))
        }
        self$`total_count` <- `total_count`
      }
      if (!is.null(`next_page_token`)) {
        if (!(is.character(`next_page_token`) && length(`next_page_token`) == 1)) {
          stop(paste("Error! Invalid data for `next_page_token`. Must be a string:", `next_page_token`))
        }
        self$`next_page_token` <- `next_page_token`
      }
      if (!is.null(`messages`)) {
        stopifnot(is.vector(`messages`), length(`messages`) != 0)
        sapply(`messages`, function(x) stopifnot(R6::is.R6(x)))
        self$`messages` <- `messages`
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
    #' @return V2reportsBioSampleDataReportPage as a base R list.
    #' @examples
    #' # convert array of V2reportsBioSampleDataReportPage (x) to a data frame
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
    #' Convert V2reportsBioSampleDataReportPage to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsBioSampleDataReportPageObject <- list()
      if (!is.null(self$`reports`)) {
        V2reportsBioSampleDataReportPageObject[["reports"]] <-
          lapply(self$`reports`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`total_count`)) {
        V2reportsBioSampleDataReportPageObject[["total_count"]] <-
          self$`total_count`
      }
      if (!is.null(self$`next_page_token`)) {
        V2reportsBioSampleDataReportPageObject[["next_page_token"]] <-
          self$`next_page_token`
      }
      if (!is.null(self$`messages`)) {
        V2reportsBioSampleDataReportPageObject[["messages"]] <-
          lapply(self$`messages`, function(x) x$toSimpleType())
      }
      return(V2reportsBioSampleDataReportPageObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsBioSampleDataReportPage
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsBioSampleDataReportPage
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`reports`)) {
        self$`reports` <- ApiClient$new()$deserializeObj(this_object$`reports`, "array[V2reportsBioSampleDataReport]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`total_count`)) {
        self$`total_count` <- this_object$`total_count`
      }
      if (!is.null(this_object$`next_page_token`)) {
        self$`next_page_token` <- this_object$`next_page_token`
      }
      if (!is.null(this_object$`messages`)) {
        self$`messages` <- ApiClient$new()$deserializeObj(this_object$`messages`, "array[V2reportsMessage]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsBioSampleDataReportPage in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsBioSampleDataReportPage
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsBioSampleDataReportPage
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`reports` <- ApiClient$new()$deserializeObj(this_object$`reports`, "array[V2reportsBioSampleDataReport]", loadNamespace("ncbiopenapi"))
      self$`total_count` <- this_object$`total_count`
      self$`next_page_token` <- this_object$`next_page_token`
      self$`messages` <- ApiClient$new()$deserializeObj(this_object$`messages`, "array[V2reportsMessage]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsBioSampleDataReportPage and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsBioSampleDataReportPage
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
# V2reportsBioSampleDataReportPage$unlock()
#
## Below is an example to define the print function
# V2reportsBioSampleDataReportPage$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsBioSampleDataReportPage$lock()

