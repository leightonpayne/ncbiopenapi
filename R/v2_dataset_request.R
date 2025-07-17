#' Create a new V2DatasetRequest
#'
#' @description
#' V2DatasetRequest Class
#'
#' @docType class
#' @title V2DatasetRequest
#' @description V2DatasetRequest Class
#' @format An \code{R6Class} generator object
#' @field genome_v2  \link{V2AssemblyDatasetRequest} [optional]
#' @field gene_v2  \link{V2GeneDatasetRequest} [optional]
#' @field virus_v2  \link{V2VirusDatasetRequest} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2DatasetRequest <- R6::R6Class(
  "V2DatasetRequest",
  public = list(
    `genome_v2` = NULL,
    `gene_v2` = NULL,
    `virus_v2` = NULL,

    #' @description
    #' Initialize a new V2DatasetRequest class.
    #'
    #' @param genome_v2 genome_v2
    #' @param gene_v2 gene_v2
    #' @param virus_v2 virus_v2
    #' @param ... Other optional arguments.
    initialize = function(`genome_v2` = NULL, `gene_v2` = NULL, `virus_v2` = NULL, ...) {
      if (!is.null(`genome_v2`)) {
        stopifnot(R6::is.R6(`genome_v2`))
        self$`genome_v2` <- `genome_v2`
      }
      if (!is.null(`gene_v2`)) {
        stopifnot(R6::is.R6(`gene_v2`))
        self$`gene_v2` <- `gene_v2`
      }
      if (!is.null(`virus_v2`)) {
        stopifnot(R6::is.R6(`virus_v2`))
        self$`virus_v2` <- `virus_v2`
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
    #' @return V2DatasetRequest as a base R list.
    #' @examples
    #' # convert array of V2DatasetRequest (x) to a data frame
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
    #' Convert V2DatasetRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2DatasetRequestObject <- list()
      if (!is.null(self$`genome_v2`)) {
        V2DatasetRequestObject[["genome_v2"]] <-
          self$`genome_v2`$toSimpleType()
      }
      if (!is.null(self$`gene_v2`)) {
        V2DatasetRequestObject[["gene_v2"]] <-
          self$`gene_v2`$toSimpleType()
      }
      if (!is.null(self$`virus_v2`)) {
        V2DatasetRequestObject[["virus_v2"]] <-
          self$`virus_v2`$toSimpleType()
      }
      return(V2DatasetRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2DatasetRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2DatasetRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`genome_v2`)) {
        `genome_v2_object` <- V2AssemblyDatasetRequest$new()
        `genome_v2_object`$fromJSON(jsonlite::toJSON(this_object$`genome_v2`, auto_unbox = TRUE, digits = NA))
        self$`genome_v2` <- `genome_v2_object`
      }
      if (!is.null(this_object$`gene_v2`)) {
        `gene_v2_object` <- V2GeneDatasetRequest$new()
        `gene_v2_object`$fromJSON(jsonlite::toJSON(this_object$`gene_v2`, auto_unbox = TRUE, digits = NA))
        self$`gene_v2` <- `gene_v2_object`
      }
      if (!is.null(this_object$`virus_v2`)) {
        `virus_v2_object` <- V2VirusDatasetRequest$new()
        `virus_v2_object`$fromJSON(jsonlite::toJSON(this_object$`virus_v2`, auto_unbox = TRUE, digits = NA))
        self$`virus_v2` <- `virus_v2_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2DatasetRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2DatasetRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2DatasetRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`genome_v2` <- V2AssemblyDatasetRequest$new()$fromJSON(jsonlite::toJSON(this_object$`genome_v2`, auto_unbox = TRUE, digits = NA))
      self$`gene_v2` <- V2GeneDatasetRequest$new()$fromJSON(jsonlite::toJSON(this_object$`gene_v2`, auto_unbox = TRUE, digits = NA))
      self$`virus_v2` <- V2VirusDatasetRequest$new()$fromJSON(jsonlite::toJSON(this_object$`virus_v2`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2DatasetRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2DatasetRequest
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
# V2DatasetRequest$unlock()
#
## Below is an example to define the print function
# V2DatasetRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2DatasetRequest$lock()

