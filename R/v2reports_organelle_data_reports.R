#' Create a new V2reportsOrganelleDataReports
#'
#' @description
#' V2reportsOrganelleDataReports Class
#'
#' @docType class
#' @title V2reportsOrganelleDataReports
#' @description V2reportsOrganelleDataReports Class
#' @format An \code{R6Class} generator object
#' @field messages  list(\link{V2reportsMessage}) [optional]
#' @field reports  list(\link{V2reportsOrganelle}) [optional]
#' @field total_count  integer [optional]
#' @field next_page_token  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsOrganelleDataReports <- R6::R6Class(
  "V2reportsOrganelleDataReports",
  public = list(
    `messages` = NULL,
    `reports` = NULL,
    `total_count` = NULL,
    `next_page_token` = NULL,

    #' @description
    #' Initialize a new V2reportsOrganelleDataReports class.
    #'
    #' @param messages messages
    #' @param reports reports
    #' @param total_count total_count
    #' @param next_page_token next_page_token
    #' @param ... Other optional arguments.
    initialize = function(`messages` = NULL, `reports` = NULL, `total_count` = NULL, `next_page_token` = NULL, ...) {
      if (!is.null(`messages`)) {
        stopifnot(is.vector(`messages`), length(`messages`) != 0)
        sapply(`messages`, function(x) stopifnot(R6::is.R6(x)))
        self$`messages` <- `messages`
      }
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
    #' @return V2reportsOrganelleDataReports as a base R list.
    #' @examples
    #' # convert array of V2reportsOrganelleDataReports (x) to a data frame
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
    #' Convert V2reportsOrganelleDataReports to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsOrganelleDataReportsObject <- list()
      if (!is.null(self$`messages`)) {
        V2reportsOrganelleDataReportsObject[["messages"]] <-
          lapply(self$`messages`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`reports`)) {
        V2reportsOrganelleDataReportsObject[["reports"]] <-
          lapply(self$`reports`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`total_count`)) {
        V2reportsOrganelleDataReportsObject[["total_count"]] <-
          self$`total_count`
      }
      if (!is.null(self$`next_page_token`)) {
        V2reportsOrganelleDataReportsObject[["next_page_token"]] <-
          self$`next_page_token`
      }
      return(V2reportsOrganelleDataReportsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsOrganelleDataReports
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsOrganelleDataReports
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`messages`)) {
        self$`messages` <- ApiClient$new()$deserializeObj(this_object$`messages`, "array[V2reportsMessage]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`reports`)) {
        self$`reports` <- ApiClient$new()$deserializeObj(this_object$`reports`, "array[V2reportsOrganelle]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`total_count`)) {
        self$`total_count` <- this_object$`total_count`
      }
      if (!is.null(this_object$`next_page_token`)) {
        self$`next_page_token` <- this_object$`next_page_token`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsOrganelleDataReports in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsOrganelleDataReports
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsOrganelleDataReports
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`messages` <- ApiClient$new()$deserializeObj(this_object$`messages`, "array[V2reportsMessage]", loadNamespace("ncbiopenapi"))
      self$`reports` <- ApiClient$new()$deserializeObj(this_object$`reports`, "array[V2reportsOrganelle]", loadNamespace("ncbiopenapi"))
      self$`total_count` <- this_object$`total_count`
      self$`next_page_token` <- this_object$`next_page_token`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsOrganelleDataReports and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsOrganelleDataReports
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
# V2reportsOrganelleDataReports$unlock()
#
## Below is an example to define the print function
# V2reportsOrganelleDataReports$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsOrganelleDataReports$lock()

