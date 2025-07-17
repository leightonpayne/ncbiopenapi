#' Create a new V2reportsTaxonomyNamesDescriptorCitation
#'
#' @description
#' V2reportsTaxonomyNamesDescriptorCitation Class
#'
#' @docType class
#' @title V2reportsTaxonomyNamesDescriptorCitation
#' @description V2reportsTaxonomyNamesDescriptorCitation Class
#' @format An \code{R6Class} generator object
#' @field full_citation  character [optional]
#' @field short_citation  character [optional]
#' @field pmid  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsTaxonomyNamesDescriptorCitation <- R6::R6Class(
  "V2reportsTaxonomyNamesDescriptorCitation",
  public = list(
    `full_citation` = NULL,
    `short_citation` = NULL,
    `pmid` = NULL,

    #' @description
    #' Initialize a new V2reportsTaxonomyNamesDescriptorCitation class.
    #'
    #' @param full_citation full_citation
    #' @param short_citation short_citation
    #' @param pmid pmid
    #' @param ... Other optional arguments.
    initialize = function(`full_citation` = NULL, `short_citation` = NULL, `pmid` = NULL, ...) {
      if (!is.null(`full_citation`)) {
        if (!(is.character(`full_citation`) && length(`full_citation`) == 1)) {
          stop(paste("Error! Invalid data for `full_citation`. Must be a string:", `full_citation`))
        }
        self$`full_citation` <- `full_citation`
      }
      if (!is.null(`short_citation`)) {
        if (!(is.character(`short_citation`) && length(`short_citation`) == 1)) {
          stop(paste("Error! Invalid data for `short_citation`. Must be a string:", `short_citation`))
        }
        self$`short_citation` <- `short_citation`
      }
      if (!is.null(`pmid`)) {
        if (!(is.character(`pmid`) && length(`pmid`) == 1)) {
          stop(paste("Error! Invalid data for `pmid`. Must be a string:", `pmid`))
        }
        self$`pmid` <- `pmid`
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
    #' @return V2reportsTaxonomyNamesDescriptorCitation as a base R list.
    #' @examples
    #' # convert array of V2reportsTaxonomyNamesDescriptorCitation (x) to a data frame
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
    #' Convert V2reportsTaxonomyNamesDescriptorCitation to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsTaxonomyNamesDescriptorCitationObject <- list()
      if (!is.null(self$`full_citation`)) {
        V2reportsTaxonomyNamesDescriptorCitationObject[["full_citation"]] <-
          self$`full_citation`
      }
      if (!is.null(self$`short_citation`)) {
        V2reportsTaxonomyNamesDescriptorCitationObject[["short_citation"]] <-
          self$`short_citation`
      }
      if (!is.null(self$`pmid`)) {
        V2reportsTaxonomyNamesDescriptorCitationObject[["pmid"]] <-
          self$`pmid`
      }
      return(V2reportsTaxonomyNamesDescriptorCitationObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsTaxonomyNamesDescriptorCitation
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsTaxonomyNamesDescriptorCitation
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`full_citation`)) {
        self$`full_citation` <- this_object$`full_citation`
      }
      if (!is.null(this_object$`short_citation`)) {
        self$`short_citation` <- this_object$`short_citation`
      }
      if (!is.null(this_object$`pmid`)) {
        self$`pmid` <- this_object$`pmid`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsTaxonomyNamesDescriptorCitation in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsTaxonomyNamesDescriptorCitation
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsTaxonomyNamesDescriptorCitation
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`full_citation` <- this_object$`full_citation`
      self$`short_citation` <- this_object$`short_citation`
      self$`pmid` <- this_object$`pmid`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsTaxonomyNamesDescriptorCitation and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsTaxonomyNamesDescriptorCitation
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
# V2reportsTaxonomyNamesDescriptorCitation$unlock()
#
## Below is an example to define the print function
# V2reportsTaxonomyNamesDescriptorCitation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsTaxonomyNamesDescriptorCitation$lock()

