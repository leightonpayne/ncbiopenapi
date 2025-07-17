#' Create a new V2reportsProcessMetadata
#'
#' @description
#' V2reportsProcessMetadata Class
#'
#' @docType class
#' @title V2reportsProcessMetadata
#' @description V2reportsProcessMetadata Class
#' @format An \code{R6Class} generator object
#' @field name  character [optional]
#' @field go_id  character [optional]
#' @field evidence_code  character [optional]
#' @field qualifier  character [optional]
#' @field reference  \link{V2reportsReference} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsProcessMetadata <- R6::R6Class(
  "V2reportsProcessMetadata",
  public = list(
    `name` = NULL,
    `go_id` = NULL,
    `evidence_code` = NULL,
    `qualifier` = NULL,
    `reference` = NULL,

    #' @description
    #' Initialize a new V2reportsProcessMetadata class.
    #'
    #' @param name name
    #' @param go_id go_id
    #' @param evidence_code evidence_code
    #' @param qualifier qualifier
    #' @param reference reference
    #' @param ... Other optional arguments.
    initialize = function(`name` = NULL, `go_id` = NULL, `evidence_code` = NULL, `qualifier` = NULL, `reference` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`go_id`)) {
        if (!(is.character(`go_id`) && length(`go_id`) == 1)) {
          stop(paste("Error! Invalid data for `go_id`. Must be a string:", `go_id`))
        }
        self$`go_id` <- `go_id`
      }
      if (!is.null(`evidence_code`)) {
        if (!(is.character(`evidence_code`) && length(`evidence_code`) == 1)) {
          stop(paste("Error! Invalid data for `evidence_code`. Must be a string:", `evidence_code`))
        }
        self$`evidence_code` <- `evidence_code`
      }
      if (!is.null(`qualifier`)) {
        if (!(is.character(`qualifier`) && length(`qualifier`) == 1)) {
          stop(paste("Error! Invalid data for `qualifier`. Must be a string:", `qualifier`))
        }
        self$`qualifier` <- `qualifier`
      }
      if (!is.null(`reference`)) {
        stopifnot(R6::is.R6(`reference`))
        self$`reference` <- `reference`
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
    #' @return V2reportsProcessMetadata as a base R list.
    #' @examples
    #' # convert array of V2reportsProcessMetadata (x) to a data frame
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
    #' Convert V2reportsProcessMetadata to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsProcessMetadataObject <- list()
      if (!is.null(self$`name`)) {
        V2reportsProcessMetadataObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`go_id`)) {
        V2reportsProcessMetadataObject[["go_id"]] <-
          self$`go_id`
      }
      if (!is.null(self$`evidence_code`)) {
        V2reportsProcessMetadataObject[["evidence_code"]] <-
          self$`evidence_code`
      }
      if (!is.null(self$`qualifier`)) {
        V2reportsProcessMetadataObject[["qualifier"]] <-
          self$`qualifier`
      }
      if (!is.null(self$`reference`)) {
        V2reportsProcessMetadataObject[["reference"]] <-
          self$`reference`$toSimpleType()
      }
      return(V2reportsProcessMetadataObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsProcessMetadata
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsProcessMetadata
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`go_id`)) {
        self$`go_id` <- this_object$`go_id`
      }
      if (!is.null(this_object$`evidence_code`)) {
        self$`evidence_code` <- this_object$`evidence_code`
      }
      if (!is.null(this_object$`qualifier`)) {
        self$`qualifier` <- this_object$`qualifier`
      }
      if (!is.null(this_object$`reference`)) {
        `reference_object` <- V2reportsReference$new()
        `reference_object`$fromJSON(jsonlite::toJSON(this_object$`reference`, auto_unbox = TRUE, digits = NA))
        self$`reference` <- `reference_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsProcessMetadata in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsProcessMetadata
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsProcessMetadata
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`go_id` <- this_object$`go_id`
      self$`evidence_code` <- this_object$`evidence_code`
      self$`qualifier` <- this_object$`qualifier`
      self$`reference` <- V2reportsReference$new()$fromJSON(jsonlite::toJSON(this_object$`reference`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsProcessMetadata and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsProcessMetadata
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
# V2reportsProcessMetadata$unlock()
#
## Below is an example to define the print function
# V2reportsProcessMetadata$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsProcessMetadata$lock()

