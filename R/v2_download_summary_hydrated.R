#' Create a new V2DownloadSummaryHydrated
#'
#' @description
#' V2DownloadSummaryHydrated Class
#'
#' @docType class
#' @title V2DownloadSummaryHydrated
#' @description V2DownloadSummaryHydrated Class
#' @format An \code{R6Class} generator object
#' @field estimated_file_size_mb  integer [optional]
#' @field url  character [optional]
#' @field cli_download_command_line  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2DownloadSummaryHydrated <- R6::R6Class(
  "V2DownloadSummaryHydrated",
  public = list(
    `estimated_file_size_mb` = NULL,
    `url` = NULL,
    `cli_download_command_line` = NULL,

    #' @description
    #' Initialize a new V2DownloadSummaryHydrated class.
    #'
    #' @param estimated_file_size_mb estimated_file_size_mb
    #' @param url url
    #' @param cli_download_command_line cli_download_command_line
    #' @param ... Other optional arguments.
    initialize = function(`estimated_file_size_mb` = NULL, `url` = NULL, `cli_download_command_line` = NULL, ...) {
      if (!is.null(`estimated_file_size_mb`)) {
        if (!(is.numeric(`estimated_file_size_mb`) && length(`estimated_file_size_mb`) == 1)) {
          stop(paste("Error! Invalid data for `estimated_file_size_mb`. Must be an integer:", `estimated_file_size_mb`))
        }
        self$`estimated_file_size_mb` <- `estimated_file_size_mb`
      }
      if (!is.null(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        self$`url` <- `url`
      }
      if (!is.null(`cli_download_command_line`)) {
        if (!(is.character(`cli_download_command_line`) && length(`cli_download_command_line`) == 1)) {
          stop(paste("Error! Invalid data for `cli_download_command_line`. Must be a string:", `cli_download_command_line`))
        }
        self$`cli_download_command_line` <- `cli_download_command_line`
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
    #' @return V2DownloadSummaryHydrated as a base R list.
    #' @examples
    #' # convert array of V2DownloadSummaryHydrated (x) to a data frame
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
    #' Convert V2DownloadSummaryHydrated to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2DownloadSummaryHydratedObject <- list()
      if (!is.null(self$`estimated_file_size_mb`)) {
        V2DownloadSummaryHydratedObject[["estimated_file_size_mb"]] <-
          self$`estimated_file_size_mb`
      }
      if (!is.null(self$`url`)) {
        V2DownloadSummaryHydratedObject[["url"]] <-
          self$`url`
      }
      if (!is.null(self$`cli_download_command_line`)) {
        V2DownloadSummaryHydratedObject[["cli_download_command_line"]] <-
          self$`cli_download_command_line`
      }
      return(V2DownloadSummaryHydratedObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2DownloadSummaryHydrated
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2DownloadSummaryHydrated
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`estimated_file_size_mb`)) {
        self$`estimated_file_size_mb` <- this_object$`estimated_file_size_mb`
      }
      if (!is.null(this_object$`url`)) {
        self$`url` <- this_object$`url`
      }
      if (!is.null(this_object$`cli_download_command_line`)) {
        self$`cli_download_command_line` <- this_object$`cli_download_command_line`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2DownloadSummaryHydrated in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2DownloadSummaryHydrated
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2DownloadSummaryHydrated
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`estimated_file_size_mb` <- this_object$`estimated_file_size_mb`
      self$`url` <- this_object$`url`
      self$`cli_download_command_line` <- this_object$`cli_download_command_line`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2DownloadSummaryHydrated and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2DownloadSummaryHydrated
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
# V2DownloadSummaryHydrated$unlock()
#
## Below is an example to define the print function
# V2DownloadSummaryHydrated$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2DownloadSummaryHydrated$lock()

