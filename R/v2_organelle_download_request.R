#' Create a new V2OrganelleDownloadRequest
#'
#' @description
#' V2OrganelleDownloadRequest Class
#'
#' @docType class
#' @title V2OrganelleDownloadRequest
#' @description V2OrganelleDownloadRequest Class
#' @format An \code{R6Class} generator object
#' @field accessions  list(character) [optional]
#' @field exclude_sequence  character [optional]
#' @field include_annotation_type  list(\link{V2AnnotationForOrganelleType}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2OrganelleDownloadRequest <- R6::R6Class(
  "V2OrganelleDownloadRequest",
  public = list(
    `accessions` = NULL,
    `exclude_sequence` = NULL,
    `include_annotation_type` = NULL,

    #' @description
    #' Initialize a new V2OrganelleDownloadRequest class.
    #'
    #' @param accessions accessions
    #' @param exclude_sequence exclude_sequence
    #' @param include_annotation_type include_annotation_type
    #' @param ... Other optional arguments.
    initialize = function(`accessions` = NULL, `exclude_sequence` = NULL, `include_annotation_type` = NULL, ...) {
      if (!is.null(`accessions`)) {
        stopifnot(is.vector(`accessions`), length(`accessions`) != 0)
        sapply(`accessions`, function(x) stopifnot(is.character(x)))
        self$`accessions` <- `accessions`
      }
      if (!is.null(`exclude_sequence`)) {
        if (!(is.logical(`exclude_sequence`) && length(`exclude_sequence`) == 1)) {
          stop(paste("Error! Invalid data for `exclude_sequence`. Must be a boolean:", `exclude_sequence`))
        }
        self$`exclude_sequence` <- `exclude_sequence`
      }
      if (!is.null(`include_annotation_type`)) {
        stopifnot(is.vector(`include_annotation_type`), length(`include_annotation_type`) != 0)
        sapply(`include_annotation_type`, function(x) stopifnot(R6::is.R6(x)))
        self$`include_annotation_type` <- `include_annotation_type`
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
    #' @return V2OrganelleDownloadRequest as a base R list.
    #' @examples
    #' # convert array of V2OrganelleDownloadRequest (x) to a data frame
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
    #' Convert V2OrganelleDownloadRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2OrganelleDownloadRequestObject <- list()
      if (!is.null(self$`accessions`)) {
        V2OrganelleDownloadRequestObject[["accessions"]] <-
          self$`accessions`
      }
      if (!is.null(self$`exclude_sequence`)) {
        V2OrganelleDownloadRequestObject[["exclude_sequence"]] <-
          self$`exclude_sequence`
      }
      if (!is.null(self$`include_annotation_type`)) {
        V2OrganelleDownloadRequestObject[["include_annotation_type"]] <-
          lapply(self$`include_annotation_type`, function(x) x$toSimpleType())
      }
      return(V2OrganelleDownloadRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2OrganelleDownloadRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2OrganelleDownloadRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accessions`)) {
        self$`accessions` <- ApiClient$new()$deserializeObj(this_object$`accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`exclude_sequence`)) {
        self$`exclude_sequence` <- this_object$`exclude_sequence`
      }
      if (!is.null(this_object$`include_annotation_type`)) {
        self$`include_annotation_type` <- ApiClient$new()$deserializeObj(this_object$`include_annotation_type`, "array[V2AnnotationForOrganelleType]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2OrganelleDownloadRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2OrganelleDownloadRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2OrganelleDownloadRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accessions` <- ApiClient$new()$deserializeObj(this_object$`accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`exclude_sequence` <- this_object$`exclude_sequence`
      self$`include_annotation_type` <- ApiClient$new()$deserializeObj(this_object$`include_annotation_type`, "array[V2AnnotationForOrganelleType]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2OrganelleDownloadRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2OrganelleDownloadRequest
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
# V2OrganelleDownloadRequest$unlock()
#
## Below is an example to define the print function
# V2OrganelleDownloadRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2OrganelleDownloadRequest$lock()

