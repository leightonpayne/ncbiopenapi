#' Create a new V2reportsGenomicLocation
#'
#' @description
#' V2reportsGenomicLocation Class
#'
#' @docType class
#' @title V2reportsGenomicLocation
#' @description V2reportsGenomicLocation Class
#' @format An \code{R6Class} generator object
#' @field genomic_accession_version  character [optional]
#' @field sequence_name  character [optional]
#' @field genomic_range  \link{V2reportsRange} [optional]
#' @field exons  list(\link{V2reportsRange}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsGenomicLocation <- R6::R6Class(
  "V2reportsGenomicLocation",
  public = list(
    `genomic_accession_version` = NULL,
    `sequence_name` = NULL,
    `genomic_range` = NULL,
    `exons` = NULL,

    #' @description
    #' Initialize a new V2reportsGenomicLocation class.
    #'
    #' @param genomic_accession_version genomic_accession_version
    #' @param sequence_name sequence_name
    #' @param genomic_range genomic_range
    #' @param exons exons
    #' @param ... Other optional arguments.
    initialize = function(`genomic_accession_version` = NULL, `sequence_name` = NULL, `genomic_range` = NULL, `exons` = NULL, ...) {
      if (!is.null(`genomic_accession_version`)) {
        if (!(is.character(`genomic_accession_version`) && length(`genomic_accession_version`) == 1)) {
          stop(paste("Error! Invalid data for `genomic_accession_version`. Must be a string:", `genomic_accession_version`))
        }
        self$`genomic_accession_version` <- `genomic_accession_version`
      }
      if (!is.null(`sequence_name`)) {
        if (!(is.character(`sequence_name`) && length(`sequence_name`) == 1)) {
          stop(paste("Error! Invalid data for `sequence_name`. Must be a string:", `sequence_name`))
        }
        self$`sequence_name` <- `sequence_name`
      }
      if (!is.null(`genomic_range`)) {
        stopifnot(R6::is.R6(`genomic_range`))
        self$`genomic_range` <- `genomic_range`
      }
      if (!is.null(`exons`)) {
        stopifnot(is.vector(`exons`), length(`exons`) != 0)
        sapply(`exons`, function(x) stopifnot(R6::is.R6(x)))
        self$`exons` <- `exons`
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
    #' @return V2reportsGenomicLocation as a base R list.
    #' @examples
    #' # convert array of V2reportsGenomicLocation (x) to a data frame
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
    #' Convert V2reportsGenomicLocation to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsGenomicLocationObject <- list()
      if (!is.null(self$`genomic_accession_version`)) {
        V2reportsGenomicLocationObject[["genomic_accession_version"]] <-
          self$`genomic_accession_version`
      }
      if (!is.null(self$`sequence_name`)) {
        V2reportsGenomicLocationObject[["sequence_name"]] <-
          self$`sequence_name`
      }
      if (!is.null(self$`genomic_range`)) {
        V2reportsGenomicLocationObject[["genomic_range"]] <-
          self$`genomic_range`$toSimpleType()
      }
      if (!is.null(self$`exons`)) {
        V2reportsGenomicLocationObject[["exons"]] <-
          lapply(self$`exons`, function(x) x$toSimpleType())
      }
      return(V2reportsGenomicLocationObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsGenomicLocation
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsGenomicLocation
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`genomic_accession_version`)) {
        self$`genomic_accession_version` <- this_object$`genomic_accession_version`
      }
      if (!is.null(this_object$`sequence_name`)) {
        self$`sequence_name` <- this_object$`sequence_name`
      }
      if (!is.null(this_object$`genomic_range`)) {
        `genomic_range_object` <- V2reportsRange$new()
        `genomic_range_object`$fromJSON(jsonlite::toJSON(this_object$`genomic_range`, auto_unbox = TRUE, digits = NA))
        self$`genomic_range` <- `genomic_range_object`
      }
      if (!is.null(this_object$`exons`)) {
        self$`exons` <- ApiClient$new()$deserializeObj(this_object$`exons`, "array[V2reportsRange]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsGenomicLocation in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsGenomicLocation
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsGenomicLocation
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`genomic_accession_version` <- this_object$`genomic_accession_version`
      self$`sequence_name` <- this_object$`sequence_name`
      self$`genomic_range` <- V2reportsRange$new()$fromJSON(jsonlite::toJSON(this_object$`genomic_range`, auto_unbox = TRUE, digits = NA))
      self$`exons` <- ApiClient$new()$deserializeObj(this_object$`exons`, "array[V2reportsRange]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsGenomicLocation and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsGenomicLocation
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
# V2reportsGenomicLocation$unlock()
#
## Below is an example to define the print function
# V2reportsGenomicLocation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsGenomicLocation$lock()

