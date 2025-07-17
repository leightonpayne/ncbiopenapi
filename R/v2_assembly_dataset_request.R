#' Create a new V2AssemblyDatasetRequest
#'
#' @description
#' V2AssemblyDatasetRequest Class
#'
#' @docType class
#' @title V2AssemblyDatasetRequest
#' @description V2AssemblyDatasetRequest Class
#' @format An \code{R6Class} generator object
#' @field accessions  list(character) [optional]
#' @field chromosomes  list(character) [optional]
#' @field include_annotation_type  list(\link{V2AnnotationForAssemblyType}) [optional]
#' @field hydrated  \link{V2AssemblyDatasetRequestResolution} [optional]
#' @field include_tsv  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2AssemblyDatasetRequest <- R6::R6Class(
  "V2AssemblyDatasetRequest",
  public = list(
    `accessions` = NULL,
    `chromosomes` = NULL,
    `include_annotation_type` = NULL,
    `hydrated` = NULL,
    `include_tsv` = NULL,

    #' @description
    #' Initialize a new V2AssemblyDatasetRequest class.
    #'
    #' @param accessions accessions
    #' @param chromosomes chromosomes
    #' @param include_annotation_type include_annotation_type
    #' @param hydrated hydrated
    #' @param include_tsv include_tsv
    #' @param ... Other optional arguments.
    initialize = function(`accessions` = NULL, `chromosomes` = NULL, `include_annotation_type` = NULL, `hydrated` = NULL, `include_tsv` = NULL, ...) {
      if (!is.null(`accessions`)) {
        stopifnot(is.vector(`accessions`), length(`accessions`) != 0)
        sapply(`accessions`, function(x) stopifnot(is.character(x)))
        self$`accessions` <- `accessions`
      }
      if (!is.null(`chromosomes`)) {
        stopifnot(is.vector(`chromosomes`), length(`chromosomes`) != 0)
        sapply(`chromosomes`, function(x) stopifnot(is.character(x)))
        self$`chromosomes` <- `chromosomes`
      }
      if (!is.null(`include_annotation_type`)) {
        stopifnot(is.vector(`include_annotation_type`), length(`include_annotation_type`) != 0)
        sapply(`include_annotation_type`, function(x) stopifnot(R6::is.R6(x)))
        self$`include_annotation_type` <- `include_annotation_type`
      }
      if (!is.null(`hydrated`)) {
        if (!(`hydrated` %in% c())) {
          stop(paste("Error! \"", `hydrated`, "\" cannot be assigned to `hydrated`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`hydrated`))
        self$`hydrated` <- `hydrated`
      }
      if (!is.null(`include_tsv`)) {
        if (!(is.logical(`include_tsv`) && length(`include_tsv`) == 1)) {
          stop(paste("Error! Invalid data for `include_tsv`. Must be a boolean:", `include_tsv`))
        }
        self$`include_tsv` <- `include_tsv`
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
    #' @return V2AssemblyDatasetRequest as a base R list.
    #' @examples
    #' # convert array of V2AssemblyDatasetRequest (x) to a data frame
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
    #' Convert V2AssemblyDatasetRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2AssemblyDatasetRequestObject <- list()
      if (!is.null(self$`accessions`)) {
        V2AssemblyDatasetRequestObject[["accessions"]] <-
          self$`accessions`
      }
      if (!is.null(self$`chromosomes`)) {
        V2AssemblyDatasetRequestObject[["chromosomes"]] <-
          self$`chromosomes`
      }
      if (!is.null(self$`include_annotation_type`)) {
        V2AssemblyDatasetRequestObject[["include_annotation_type"]] <-
          lapply(self$`include_annotation_type`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`hydrated`)) {
        V2AssemblyDatasetRequestObject[["hydrated"]] <-
          self$`hydrated`$toSimpleType()
      }
      if (!is.null(self$`include_tsv`)) {
        V2AssemblyDatasetRequestObject[["include_tsv"]] <-
          self$`include_tsv`
      }
      return(V2AssemblyDatasetRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2AssemblyDatasetRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2AssemblyDatasetRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accessions`)) {
        self$`accessions` <- ApiClient$new()$deserializeObj(this_object$`accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`chromosomes`)) {
        self$`chromosomes` <- ApiClient$new()$deserializeObj(this_object$`chromosomes`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`include_annotation_type`)) {
        self$`include_annotation_type` <- ApiClient$new()$deserializeObj(this_object$`include_annotation_type`, "array[V2AnnotationForAssemblyType]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`hydrated`)) {
        `hydrated_object` <- V2AssemblyDatasetRequestResolution$new()
        `hydrated_object`$fromJSON(jsonlite::toJSON(this_object$`hydrated`, auto_unbox = TRUE, digits = NA))
        self$`hydrated` <- `hydrated_object`
      }
      if (!is.null(this_object$`include_tsv`)) {
        self$`include_tsv` <- this_object$`include_tsv`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2AssemblyDatasetRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2AssemblyDatasetRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2AssemblyDatasetRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accessions` <- ApiClient$new()$deserializeObj(this_object$`accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`chromosomes` <- ApiClient$new()$deserializeObj(this_object$`chromosomes`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`include_annotation_type` <- ApiClient$new()$deserializeObj(this_object$`include_annotation_type`, "array[V2AnnotationForAssemblyType]", loadNamespace("ncbiopenapi"))
      self$`hydrated` <- V2AssemblyDatasetRequestResolution$new()$fromJSON(jsonlite::toJSON(this_object$`hydrated`, auto_unbox = TRUE, digits = NA))
      self$`include_tsv` <- this_object$`include_tsv`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2AssemblyDatasetRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2AssemblyDatasetRequest
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
# V2AssemblyDatasetRequest$unlock()
#
## Below is an example to define the print function
# V2AssemblyDatasetRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2AssemblyDatasetRequest$lock()

