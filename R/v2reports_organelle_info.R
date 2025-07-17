#' Create a new V2reportsOrganelleInfo
#'
#' @description
#' V2reportsOrganelleInfo Class
#'
#' @docType class
#' @title V2reportsOrganelleInfo
#' @description V2reportsOrganelleInfo Class
#' @format An \code{R6Class} generator object
#' @field assembly_name  character [optional]
#' @field infraspecific_name  character [optional]
#' @field bioproject  list(character) [optional]
#' @field description  character [optional]
#' @field total_seq_length  character [optional]
#' @field submitter  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsOrganelleInfo <- R6::R6Class(
  "V2reportsOrganelleInfo",
  public = list(
    `assembly_name` = NULL,
    `infraspecific_name` = NULL,
    `bioproject` = NULL,
    `description` = NULL,
    `total_seq_length` = NULL,
    `submitter` = NULL,

    #' @description
    #' Initialize a new V2reportsOrganelleInfo class.
    #'
    #' @param assembly_name assembly_name
    #' @param infraspecific_name infraspecific_name
    #' @param bioproject bioproject
    #' @param description description
    #' @param total_seq_length total_seq_length
    #' @param submitter submitter
    #' @param ... Other optional arguments.
    initialize = function(`assembly_name` = NULL, `infraspecific_name` = NULL, `bioproject` = NULL, `description` = NULL, `total_seq_length` = NULL, `submitter` = NULL, ...) {
      if (!is.null(`assembly_name`)) {
        if (!(is.character(`assembly_name`) && length(`assembly_name`) == 1)) {
          stop(paste("Error! Invalid data for `assembly_name`. Must be a string:", `assembly_name`))
        }
        self$`assembly_name` <- `assembly_name`
      }
      if (!is.null(`infraspecific_name`)) {
        if (!(is.character(`infraspecific_name`) && length(`infraspecific_name`) == 1)) {
          stop(paste("Error! Invalid data for `infraspecific_name`. Must be a string:", `infraspecific_name`))
        }
        self$`infraspecific_name` <- `infraspecific_name`
      }
      if (!is.null(`bioproject`)) {
        stopifnot(is.vector(`bioproject`), length(`bioproject`) != 0)
        sapply(`bioproject`, function(x) stopifnot(is.character(x)))
        self$`bioproject` <- `bioproject`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`total_seq_length`)) {
        if (!(is.character(`total_seq_length`) && length(`total_seq_length`) == 1)) {
          stop(paste("Error! Invalid data for `total_seq_length`. Must be a string:", `total_seq_length`))
        }
        self$`total_seq_length` <- `total_seq_length`
      }
      if (!is.null(`submitter`)) {
        if (!(is.character(`submitter`) && length(`submitter`) == 1)) {
          stop(paste("Error! Invalid data for `submitter`. Must be a string:", `submitter`))
        }
        self$`submitter` <- `submitter`
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
    #' @return V2reportsOrganelleInfo as a base R list.
    #' @examples
    #' # convert array of V2reportsOrganelleInfo (x) to a data frame
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
    #' Convert V2reportsOrganelleInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsOrganelleInfoObject <- list()
      if (!is.null(self$`assembly_name`)) {
        V2reportsOrganelleInfoObject[["assembly_name"]] <-
          self$`assembly_name`
      }
      if (!is.null(self$`infraspecific_name`)) {
        V2reportsOrganelleInfoObject[["infraspecific_name"]] <-
          self$`infraspecific_name`
      }
      if (!is.null(self$`bioproject`)) {
        V2reportsOrganelleInfoObject[["bioproject"]] <-
          self$`bioproject`
      }
      if (!is.null(self$`description`)) {
        V2reportsOrganelleInfoObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`total_seq_length`)) {
        V2reportsOrganelleInfoObject[["total_seq_length"]] <-
          self$`total_seq_length`
      }
      if (!is.null(self$`submitter`)) {
        V2reportsOrganelleInfoObject[["submitter"]] <-
          self$`submitter`
      }
      return(V2reportsOrganelleInfoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsOrganelleInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsOrganelleInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`assembly_name`)) {
        self$`assembly_name` <- this_object$`assembly_name`
      }
      if (!is.null(this_object$`infraspecific_name`)) {
        self$`infraspecific_name` <- this_object$`infraspecific_name`
      }
      if (!is.null(this_object$`bioproject`)) {
        self$`bioproject` <- ApiClient$new()$deserializeObj(this_object$`bioproject`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`total_seq_length`)) {
        self$`total_seq_length` <- this_object$`total_seq_length`
      }
      if (!is.null(this_object$`submitter`)) {
        self$`submitter` <- this_object$`submitter`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsOrganelleInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsOrganelleInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsOrganelleInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`assembly_name` <- this_object$`assembly_name`
      self$`infraspecific_name` <- this_object$`infraspecific_name`
      self$`bioproject` <- ApiClient$new()$deserializeObj(this_object$`bioproject`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`description` <- this_object$`description`
      self$`total_seq_length` <- this_object$`total_seq_length`
      self$`submitter` <- this_object$`submitter`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsOrganelleInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsOrganelleInfo
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
# V2reportsOrganelleInfo$unlock()
#
## Below is an example to define the print function
# V2reportsOrganelleInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsOrganelleInfo$lock()

