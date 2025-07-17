#' Create a new V2archiveName
#'
#' @description
#' V2archiveName Class
#'
#' @docType class
#' @title V2archiveName
#' @description V2archiveName Class
#' @format An \code{R6Class} generator object
#' @field first  character [optional]
#' @field middle  character [optional]
#' @field last  character [optional]
#' @field full  character [optional]
#' @field initials  character [optional]
#' @field suffix  character [optional]
#' @field title  character [optional]
#' @field affiliation  \link{V2archiveAffiliation} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2archiveName <- R6::R6Class(
  "V2archiveName",
  public = list(
    `first` = NULL,
    `middle` = NULL,
    `last` = NULL,
    `full` = NULL,
    `initials` = NULL,
    `suffix` = NULL,
    `title` = NULL,
    `affiliation` = NULL,

    #' @description
    #' Initialize a new V2archiveName class.
    #'
    #' @param first first
    #' @param middle middle
    #' @param last last
    #' @param full full
    #' @param initials initials
    #' @param suffix suffix
    #' @param title title
    #' @param affiliation affiliation
    #' @param ... Other optional arguments.
    initialize = function(`first` = NULL, `middle` = NULL, `last` = NULL, `full` = NULL, `initials` = NULL, `suffix` = NULL, `title` = NULL, `affiliation` = NULL, ...) {
      if (!is.null(`first`)) {
        if (!(is.character(`first`) && length(`first`) == 1)) {
          stop(paste("Error! Invalid data for `first`. Must be a string:", `first`))
        }
        self$`first` <- `first`
      }
      if (!is.null(`middle`)) {
        if (!(is.character(`middle`) && length(`middle`) == 1)) {
          stop(paste("Error! Invalid data for `middle`. Must be a string:", `middle`))
        }
        self$`middle` <- `middle`
      }
      if (!is.null(`last`)) {
        if (!(is.character(`last`) && length(`last`) == 1)) {
          stop(paste("Error! Invalid data for `last`. Must be a string:", `last`))
        }
        self$`last` <- `last`
      }
      if (!is.null(`full`)) {
        if (!(is.character(`full`) && length(`full`) == 1)) {
          stop(paste("Error! Invalid data for `full`. Must be a string:", `full`))
        }
        self$`full` <- `full`
      }
      if (!is.null(`initials`)) {
        if (!(is.character(`initials`) && length(`initials`) == 1)) {
          stop(paste("Error! Invalid data for `initials`. Must be a string:", `initials`))
        }
        self$`initials` <- `initials`
      }
      if (!is.null(`suffix`)) {
        if (!(is.character(`suffix`) && length(`suffix`) == 1)) {
          stop(paste("Error! Invalid data for `suffix`. Must be a string:", `suffix`))
        }
        self$`suffix` <- `suffix`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`affiliation`)) {
        stopifnot(R6::is.R6(`affiliation`))
        self$`affiliation` <- `affiliation`
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
    #' @return V2archiveName as a base R list.
    #' @examples
    #' # convert array of V2archiveName (x) to a data frame
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
    #' Convert V2archiveName to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2archiveNameObject <- list()
      if (!is.null(self$`first`)) {
        V2archiveNameObject[["first"]] <-
          self$`first`
      }
      if (!is.null(self$`middle`)) {
        V2archiveNameObject[["middle"]] <-
          self$`middle`
      }
      if (!is.null(self$`last`)) {
        V2archiveNameObject[["last"]] <-
          self$`last`
      }
      if (!is.null(self$`full`)) {
        V2archiveNameObject[["full"]] <-
          self$`full`
      }
      if (!is.null(self$`initials`)) {
        V2archiveNameObject[["initials"]] <-
          self$`initials`
      }
      if (!is.null(self$`suffix`)) {
        V2archiveNameObject[["suffix"]] <-
          self$`suffix`
      }
      if (!is.null(self$`title`)) {
        V2archiveNameObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`affiliation`)) {
        V2archiveNameObject[["affiliation"]] <-
          self$`affiliation`$toSimpleType()
      }
      return(V2archiveNameObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2archiveName
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2archiveName
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`first`)) {
        self$`first` <- this_object$`first`
      }
      if (!is.null(this_object$`middle`)) {
        self$`middle` <- this_object$`middle`
      }
      if (!is.null(this_object$`last`)) {
        self$`last` <- this_object$`last`
      }
      if (!is.null(this_object$`full`)) {
        self$`full` <- this_object$`full`
      }
      if (!is.null(this_object$`initials`)) {
        self$`initials` <- this_object$`initials`
      }
      if (!is.null(this_object$`suffix`)) {
        self$`suffix` <- this_object$`suffix`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`affiliation`)) {
        `affiliation_object` <- V2archiveAffiliation$new()
        `affiliation_object`$fromJSON(jsonlite::toJSON(this_object$`affiliation`, auto_unbox = TRUE, digits = NA))
        self$`affiliation` <- `affiliation_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2archiveName in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2archiveName
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2archiveName
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`first` <- this_object$`first`
      self$`middle` <- this_object$`middle`
      self$`last` <- this_object$`last`
      self$`full` <- this_object$`full`
      self$`initials` <- this_object$`initials`
      self$`suffix` <- this_object$`suffix`
      self$`title` <- this_object$`title`
      self$`affiliation` <- V2archiveAffiliation$new()$fromJSON(jsonlite::toJSON(this_object$`affiliation`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2archiveName and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2archiveName
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
# V2archiveName$unlock()
#
## Below is an example to define the print function
# V2archiveName$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2archiveName$lock()

