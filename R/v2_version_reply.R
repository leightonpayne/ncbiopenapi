#' Create a new V2VersionReply
#'
#' @description
#' V2VersionReply Class
#'
#' @docType class
#' @title V2VersionReply
#' @description V2VersionReply Class
#' @format An \code{R6Class} generator object
#' @field version  character [optional]
#' @field major_ver  integer [optional]
#' @field minor_ver  integer [optional]
#' @field patch_ver  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2VersionReply <- R6::R6Class(
  "V2VersionReply",
  public = list(
    `version` = NULL,
    `major_ver` = NULL,
    `minor_ver` = NULL,
    `patch_ver` = NULL,

    #' @description
    #' Initialize a new V2VersionReply class.
    #'
    #' @param version version
    #' @param major_ver major_ver
    #' @param minor_ver minor_ver
    #' @param patch_ver patch_ver
    #' @param ... Other optional arguments.
    initialize = function(`version` = NULL, `major_ver` = NULL, `minor_ver` = NULL, `patch_ver` = NULL, ...) {
      if (!is.null(`version`)) {
        if (!(is.character(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", `version`))
        }
        self$`version` <- `version`
      }
      if (!is.null(`major_ver`)) {
        if (!(is.numeric(`major_ver`) && length(`major_ver`) == 1)) {
          stop(paste("Error! Invalid data for `major_ver`. Must be an integer:", `major_ver`))
        }
        self$`major_ver` <- `major_ver`
      }
      if (!is.null(`minor_ver`)) {
        if (!(is.numeric(`minor_ver`) && length(`minor_ver`) == 1)) {
          stop(paste("Error! Invalid data for `minor_ver`. Must be an integer:", `minor_ver`))
        }
        self$`minor_ver` <- `minor_ver`
      }
      if (!is.null(`patch_ver`)) {
        if (!(is.numeric(`patch_ver`) && length(`patch_ver`) == 1)) {
          stop(paste("Error! Invalid data for `patch_ver`. Must be an integer:", `patch_ver`))
        }
        self$`patch_ver` <- `patch_ver`
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
    #' @return V2VersionReply as a base R list.
    #' @examples
    #' # convert array of V2VersionReply (x) to a data frame
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
    #' Convert V2VersionReply to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2VersionReplyObject <- list()
      if (!is.null(self$`version`)) {
        V2VersionReplyObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`major_ver`)) {
        V2VersionReplyObject[["major_ver"]] <-
          self$`major_ver`
      }
      if (!is.null(self$`minor_ver`)) {
        V2VersionReplyObject[["minor_ver"]] <-
          self$`minor_ver`
      }
      if (!is.null(self$`patch_ver`)) {
        V2VersionReplyObject[["patch_ver"]] <-
          self$`patch_ver`
      }
      return(V2VersionReplyObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2VersionReply
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2VersionReply
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      if (!is.null(this_object$`major_ver`)) {
        self$`major_ver` <- this_object$`major_ver`
      }
      if (!is.null(this_object$`minor_ver`)) {
        self$`minor_ver` <- this_object$`minor_ver`
      }
      if (!is.null(this_object$`patch_ver`)) {
        self$`patch_ver` <- this_object$`patch_ver`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2VersionReply in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2VersionReply
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2VersionReply
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`version` <- this_object$`version`
      self$`major_ver` <- this_object$`major_ver`
      self$`minor_ver` <- this_object$`minor_ver`
      self$`patch_ver` <- this_object$`patch_ver`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2VersionReply and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2VersionReply
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
# V2VersionReply$unlock()
#
## Below is an example to define the print function
# V2VersionReply$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2VersionReply$lock()

