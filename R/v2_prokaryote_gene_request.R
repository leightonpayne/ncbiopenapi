#' Create a new V2ProkaryoteGeneRequest
#'
#' @description
#' V2ProkaryoteGeneRequest Class
#'
#' @docType class
#' @title V2ProkaryoteGeneRequest
#' @description V2ProkaryoteGeneRequest Class
#' @format An \code{R6Class} generator object
#' @field accessions  list(character) [optional]
#' @field include_annotation_type  list(\link{V2Fasta}) [optional]
#' @field gene_flank_config  \link{V2ProkaryoteGeneRequestGeneFlankConfig} [optional]
#' @field taxon  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2ProkaryoteGeneRequest <- R6::R6Class(
  "V2ProkaryoteGeneRequest",
  public = list(
    `accessions` = NULL,
    `include_annotation_type` = NULL,
    `gene_flank_config` = NULL,
    `taxon` = NULL,

    #' @description
    #' Initialize a new V2ProkaryoteGeneRequest class.
    #'
    #' @param accessions accessions
    #' @param include_annotation_type include_annotation_type
    #' @param gene_flank_config gene_flank_config
    #' @param taxon taxon
    #' @param ... Other optional arguments.
    initialize = function(`accessions` = NULL, `include_annotation_type` = NULL, `gene_flank_config` = NULL, `taxon` = NULL, ...) {
      if (!is.null(`accessions`)) {
        stopifnot(is.vector(`accessions`), length(`accessions`) != 0)
        sapply(`accessions`, function(x) stopifnot(is.character(x)))
        self$`accessions` <- `accessions`
      }
      if (!is.null(`include_annotation_type`)) {
        stopifnot(is.vector(`include_annotation_type`), length(`include_annotation_type`) != 0)
        sapply(`include_annotation_type`, function(x) stopifnot(R6::is.R6(x)))
        self$`include_annotation_type` <- `include_annotation_type`
      }
      if (!is.null(`gene_flank_config`)) {
        stopifnot(R6::is.R6(`gene_flank_config`))
        self$`gene_flank_config` <- `gene_flank_config`
      }
      if (!is.null(`taxon`)) {
        if (!(is.character(`taxon`) && length(`taxon`) == 1)) {
          stop(paste("Error! Invalid data for `taxon`. Must be a string:", `taxon`))
        }
        self$`taxon` <- `taxon`
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
    #' @return V2ProkaryoteGeneRequest as a base R list.
    #' @examples
    #' # convert array of V2ProkaryoteGeneRequest (x) to a data frame
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
    #' Convert V2ProkaryoteGeneRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2ProkaryoteGeneRequestObject <- list()
      if (!is.null(self$`accessions`)) {
        V2ProkaryoteGeneRequestObject[["accessions"]] <-
          self$`accessions`
      }
      if (!is.null(self$`include_annotation_type`)) {
        V2ProkaryoteGeneRequestObject[["include_annotation_type"]] <-
          lapply(self$`include_annotation_type`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`gene_flank_config`)) {
        V2ProkaryoteGeneRequestObject[["gene_flank_config"]] <-
          self$`gene_flank_config`$toSimpleType()
      }
      if (!is.null(self$`taxon`)) {
        V2ProkaryoteGeneRequestObject[["taxon"]] <-
          self$`taxon`
      }
      return(V2ProkaryoteGeneRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2ProkaryoteGeneRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2ProkaryoteGeneRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accessions`)) {
        self$`accessions` <- ApiClient$new()$deserializeObj(this_object$`accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`include_annotation_type`)) {
        self$`include_annotation_type` <- ApiClient$new()$deserializeObj(this_object$`include_annotation_type`, "array[V2Fasta]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`gene_flank_config`)) {
        `gene_flank_config_object` <- V2ProkaryoteGeneRequestGeneFlankConfig$new()
        `gene_flank_config_object`$fromJSON(jsonlite::toJSON(this_object$`gene_flank_config`, auto_unbox = TRUE, digits = NA))
        self$`gene_flank_config` <- `gene_flank_config_object`
      }
      if (!is.null(this_object$`taxon`)) {
        self$`taxon` <- this_object$`taxon`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2ProkaryoteGeneRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2ProkaryoteGeneRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2ProkaryoteGeneRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accessions` <- ApiClient$new()$deserializeObj(this_object$`accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`include_annotation_type` <- ApiClient$new()$deserializeObj(this_object$`include_annotation_type`, "array[V2Fasta]", loadNamespace("ncbiopenapi"))
      self$`gene_flank_config` <- V2ProkaryoteGeneRequestGeneFlankConfig$new()$fromJSON(jsonlite::toJSON(this_object$`gene_flank_config`, auto_unbox = TRUE, digits = NA))
      self$`taxon` <- this_object$`taxon`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2ProkaryoteGeneRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2ProkaryoteGeneRequest
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
# V2ProkaryoteGeneRequest$unlock()
#
## Below is an example to define the print function
# V2ProkaryoteGeneRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2ProkaryoteGeneRequest$lock()

